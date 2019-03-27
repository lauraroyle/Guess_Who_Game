class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update]

  def new
    # figure out how to find the current player in the game controller
    # @player = Player.find(params[:id])
    # @game = Game.new(score: 0, round: 1, player: @player)
  end

  def create

  end

  def show
    # use method in game model to set up game characters
    # @player = Player.find(params[:id])
    @game_characters = Game.set_up_game_characters(player)
    # pick one out of the 25 characters to be the guess who character
    @guess_who = @game_characters.sample
    # set up associations in GameCharacters table
    @game_characters.each do |gc|
      GameCharacter.create(game: @game, player_id: gc)
    end
    #put Question.all in an array that we will remove questions from as they are asked.
    @question_set = Question.all
    #find first set of Questions
    @questions_to_display_to_player = @question_set.sample(4)
    while @game.round != 10
      # store whatever question the user has chosen "chosen_question"
      if
      # remove that question from the question set.
      @question_set = @question_set.map {|q| q != chosen_question }

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
