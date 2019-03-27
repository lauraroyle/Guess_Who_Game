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
    @guess_who = @game.guess_who
    @question_set = Question.all
    @game.round = @game.questions.length
    if @game.questions.length > 0 && @game.questions.length < 10

      @question_set = Question.all - @game.questions
      @game.questions.each do |q|
        if @guess_who.characterstics.include?(q.characteristic)
          @game_characters = @game_characters.select do |gc|
            gc.characteristics.include?(q.characteristic)
          end
        else
          @game_characters -= @game_characters.select do |gc|
            gc.characteristics.include?(q.characteristic)
          end
        end
      end

    end

    def update
      if @game.guess_who == params[:game][:picked_character]
        redirect_to win_page_path
      else
        redirect_to lose_page_path
      end
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
