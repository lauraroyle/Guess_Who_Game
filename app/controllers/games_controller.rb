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
            byebug
            gc.destroy
          end
        end
      end

    end




    # if a question has been asked, @game.questions.length > 0
    # if @game.questions.length > 0
    #   # take the questions out of the question set.
    #   @question_set = Question.all - @game.questions
    #   # for each question that has been asked:
    #    @game.questions.each do |q|
    #      # for each game character
    #     @current_game_characters.each do |gc|
    #       # if the @guess_who character has that characteritic in question
    #       if @guess_who.characteristics.include?(q.characteristic_id)
    #         # if the game character does not have that characteristic
    #         if !(gc.characteristics.include?(q.characteristic_id))
    #           # destroy the game_character record
    #           gc_record = GameCharacter.find_by(player_id: gc.id)
    #           gc_record.destroy
    #         end
    #       else
    #         # if the guess who does not have the characteristic but the gc does
    #         if (gc.characteristics.include?(q.characteristic_id))
    #           # destroy the game_character record
    #           gc_record = GameCharacter.find_by(player_id: gc.id)
    #           gc_record.destroy
    #         end
    #       end
    #     end
    #   end
    # end
  end

  def update
    if @game.guess_who == params[:game][:picked_character]
      redirect_to win_page_path
    else
      redirect_to lose_page_path
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
