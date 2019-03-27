class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update]

  def new
    @player = current_player
    @game = Game.new(score: 0, round: 1, player: @player)
  end

  def create
    @game = Game.new(game_params)
    if @game.valid?
      @game.save
      # use method in game model to set up game characters
      @game_characters = Game.set_up_game_characters(@game.player)
      # pick one out of the 25 characters to be the guess who character
      @guess_who = @game_characters.sample
      @game.guess_who = @guess_who.id
      # set up associations in GameCharacters table
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
    @game_characters = @game.characters
    @question_set = Question.all
    if @game.questions.length != 0

      @question_set = Question.all - @game.questions

    end

    def update
      if @game.guess_who == params[:game][:picked_character]
        redirect_to win_page_path
      else
        redirect_to lose_page_path
      end
    end

    #   #if the user selects a question:
    #   if @selected_question
    #     @characteristic = @selected_question.characteristic
    #     # check if @guess_who has this characteristic
    #     if @guess_who.characteristics.include?(@characteristic)
    #       # if the character does have this characteristic, remove those that dont.
    #       @game_characters = @game_characters.map do |gc|
    #         gc.characteristics.include?(@characteristic)
    #       end
    #     else # if guess_who doesnt have the characteristic, remove those that do.
    #       @game_characters -= @game_characters.map do |gc|
    #         gc.characteristics.include?(@characteristic)
    #       end
    #     end
    #     @game.round += 1
    #     # remove the asked question from the question array before next round
    #     @question_set -= @selected_question
    #
    #    #if the user tries to guess who by clicking on a character @player_guess
    #  else
    #    if @player_guess == @guess_who
    #      @game.score = @game.round
    #      redirect_to win_path
    #    else
    #      redirect_to lose_path
    #    end
    #  end
    #
    # end

  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:score, :round, :player_id)
  end
end
