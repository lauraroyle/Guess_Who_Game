class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update]
  before_action :require_login, only: %i[show new create edit]


  def new
    @player = current_player
    @game = Game.new(score: 0, round: 1, player: @player)
  end

  def create
    @player = current_player
    @game = Game.new(score: 0, round: 1, player: @player)
    if @game.valid?
      @game.save
      # chooses 25 random characters
      @game_characters = Game.set_up_game_characters(@game.player_id)
      # chooses 1 of teh 25 to be the guess who
      @guess_who = @game_characters.sample
      # update the game with the guess who character id.
      @game.update(guess_who: @guess_who.id)
      # create association with the game and the characters
      @game_characters.each do |gc|
        GameCharacter.create(game: @game, player_id: gc.id)
      end
      redirect_to @game
    else
      render :new
    end
  end

  def show
    # make an association between game and a new question
    @game_question = GameQuestion.new(game: @game)
    # @current_game_characters = @game.characters
    # get the instance of the guess who player
    @guess_who = Player.find(@game.guess_who)
    @question_set = Question.all
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

  def edit
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
    params.require(:game).permit(:score, :round, :player_id, :player)
  end

  def require_login
    authorized?
  end
end
