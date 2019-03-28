class PlayersController < ApplicationController
  before_action :set_player, only: %i[show edit update]

  def index
    @players = Player.all
  end

  # the player show page will show his profile data and statistitics
  def show; end

  # the edit page will let the player edit their name, username, and their characteristics
  def edit; end

  # new will let a user create a new player.
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(
      name: player_params[:name],
      top_score: player_params[:top_score]
    )
    if @player.valid?
      @player.save
      characteristics = [
        params[:player][:gender],
        params[:player][:hair_colour],
        params[:player][:eye_colour],
        params[:player][:facial_hair],
        params[:player][:alive],
        params[:player][:glasses],
        params[:player][:wears_hat],
        params[:player][:occupation]
      ]
      characteristics.each do |c|
        PlayerCharacteristic.create(player_id: @player.id, characteristic_id: c)
      end

      redirect_to @player
    else
      render :new
    end
  end

  def update
    if @player.update(player_params)
      redirect_to @player
    else
      render :edit
    end
  end

  private

  def player_params
    params.require(:player).permit(
      :name,
      :password,
      :top_score,
      :gender,
      :eye_colour,
      :hair_colour,
      :glasses,
      :facial_hair,
      :alive,
      :wears_hat,
      :occupation
    )
  end

  def set_player
    @player = Player.find(params[:id])
  end
end
