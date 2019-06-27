class GameQuestionsController < ApplicationController
  before_action :set_game_question, only: %i[show edit update]

  def new
    @game_question = GameQuestion.new()
  end

  def show
  end

  def edit
  end

  def create
    #  Create new game questions, check valid?, save
    @game_question = GameQuestion.new(game_question_params)
    @game_question.valid?
    @game_question.save

    #  Associate game questions with a game, set guess who character, question characteristic and guess who has characteristic
    game = @game_question.game
    guess_who = game.guess_who
    question_characteristic = @game_question.question.characteristic_id
    guess_who_has_characteristic = Player.find(guess_who).characteristic_ids.include?(question_characteristic)

    #  Logic: If the guess who characeter has the characterstic asked in the question, update @updated_characters, save and redirect.
    if guess_who_has_characteristic
      @updated_characters = game.characters.filter { |character| character.characteristic_ids.include?(question_characteristic) }
    else
      @updated_characters = game.characters.filter { |character| character.characteristic_ids.exclude?(question_characteristic) }
    end

    game.players = @updated_characters
    game.save
    redirect_to @game_question.game

  end

  private

  def set_game_question
    @game_question = GameQuestion.find(params[:id])
  end

  def game_question_params
    params.require(:game_question).permit(:question_id, :game_id)
  end
end
