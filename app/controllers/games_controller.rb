class GamesController < ApplicationController
  #why is set_game needed?
  before_action :set_game, only: %i[show edit update]
  before_action :require_login, only: %i[show new create edit]


  def new
    @player = current_player
    #byebug says @player is nil when I run on line 44? but current_player gives me correct instance of the player. Why is this?
    @game = Game.new(score: 0, round: 1, player: @player)
    #@game is being initialised correctly with the current player - working
  end

  def create
    @player = current_player
    @game = Game.new(score: 0, round: 1, player: @player)
    if @game.valid? #what are we valiadating against?
      @game.save
      # chooses 25 random characters - working
      @game_characters = Game.set_up_game_characters(@game.player_id)
      # chooses 1 of the 25 to be the guess who - working
      @guess_who = @game_characters.sample
      # update the game with the guess who character id - working
      @game.update(guess_who: @guess_who.id)
      # create association with the game and the characters - working
      @game_characters.each do |gc|
        GameCharacter.create(game: @game, player_id: gc.id)
      end
      redirect_to @game
    else
      render :new
    end
  end

  def show
    # make an association between game and a new question - working
    @game_question = GameQuestion.new(game: @game)
    # get the instance of the guess who player - working
    @guess_who = Player.find(@game.guess_who)
    # @question_set is used with collection select for the dropdown in the view - working
    @question_set = Question.all

    # @game.round is reflects how many questions the user has asked
    @game.round = @game.questions.length
    if @game.questions.length > 0
      # take the question a user asks out of the question set.
      @question_set = Question.all - @game.questions

      # finds the characteristic_id from the last question asked by the user - working
      question_characteristic = @game.questions.map {|q| q.characteristic_id}.last
      # checks characteristic id against the guess who character and give true or false - working
      guess_who_has_characteristic = @guess_who.characteristic_ids.include?(question_characteristic)

      # filters game.characters to give updated_characters array - working
      if guess_who_has_characteristic
        @updated_characters = @game.characters.filter { |character| character.characteristic_ids.include?(question_characteristic) }
      else
        @updated_characters = @game.characters.filter { |character| character.characteristic_ids.exclude?(question_characteristic) }
      end

      # array contains the 25 characters in the game - working
      game_character_records = GameCharacter.where(game_id: @game.id)
      #iterate over both arrays and compare the player_ids. If there is a match, destroy.
      game_character_records.all.each do |gc|
        @updated_characters.each do |character|
          if gc.player_id == character.id
            gc.destroy
            # byebug
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
