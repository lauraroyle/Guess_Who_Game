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
    @player = Player.new(player_params)
    if @player.valid?
      @player.save
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
    params.require(:player).permit(:name, :top_score)
  end

  def set_player
    @player = Player.find(params[:id])
  end
end
