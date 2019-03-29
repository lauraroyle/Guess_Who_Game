class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update]
  def new
    @player = current_user
    @game = Game.new(score: 0, round: 1, player: @player)
  end

  def create
    @game = Game.new(game_params)
    if @game.valid?
      @game.save
      @game_characters = Game.set_up_game_characters(@game.player_id)
      @guess_who = @game_characters.sample
      @game.update(guess_who: @guess_who.id)
      @game_characters.each do |gc|
        GameCharacter.create(game: @game, player_id: gc.id)
      end
      redirect_to @game
    else
      render :new
    end
  end

  def show
    @game_question = GameQuestion.new(game: @game)
    @current_game_characters = @game.characters
    @guess_who = Player.find(@game.guess_who)
    @question_set = Question.all
    # byebug
    @game.round = @game.questions.length
    if @game.questions.length > 0
      # take the questions out of the question set.
      @question_set = Question.all - @game.questions
      question_characteristic = Question.find(params[:id]).characteristic_id
      guess_who_has_characteristic = @guess_who.characteristic_ids.include?(
        question_characteristic
      )

      if guess_who_has_characteristic
        failed_characters = @game.characters.filter { |character| character.characteristic_ids.exclude?(question_characteristic) }
      else
        failed_characters = @game.characters.filter { |character| character.characteristic_ids.include?(question_characteristic) }
      end

      game_character_records = GameCharacter.where(game_id: @game.id)

      game_character_records.all.each do |gc|
        failed_characters.each do |fc|
          if gc.player_id == fc.id
            gc.destroy
          end
        end
      end

    end
  end

  def update
    if @game.guess_who == params[:game][:picked_character]
      render :you_win
    else
      render :you_lose
    end
  end


  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:score, :round, :player_id)
  end

end
