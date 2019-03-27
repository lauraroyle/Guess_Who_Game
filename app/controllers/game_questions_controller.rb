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
    @game_question = GameQuestion.new(game_question_params)

    @game_question.valid?
    @game_question.save
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
