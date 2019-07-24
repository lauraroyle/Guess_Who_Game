class PlayersController < ApplicationController
  before_action :set_player, only: %i[show edit update]


  def index
    @players = Player.all
  
    respond_to do |f|
      f.html {render :index}
      f.json {render json: @players}
    end

  end

  # the player show page will show profile data and statistitics
  def show
    @player = Player.find(params[:id])
 
    respond_to do |f|
      f.html {render :show}
      f.json {render json: @player}
    end
  end

  # the edit page will let the player edit their name, username, and their characteristics
  def edit
  end

  # new will let a user create a new player.
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(
      name: player_params[:name],
      password: player_params[:password],
      image: player_params[:image],
      top_score: player_params[:top_score]
    )

    if @player.valid?
      @player.save

      characteristics = []
      if player_params[:gender]
        characteristics << player_params[:gender]
      end
      if player_params[:hair_colour]
        characteristics << player_params[:hair_colour]
      end
      if player_params[:eye_colour]
        characteristics << player_params[:eye_colour]
      end
      if player_params[:facial_hair]
        characteristics << player_params[:facial_hair]
      end
      if player_params[:alive]
        characteristics << player_params[:alive]
      end
      if player_params[:glasses]
        characteristics << player_params[:glasses]
      end
      if player_params[:wears_hat]
        characteristics << player_params[:wears_hat]
      end
      if player_params[:occupation]
        characteristics << player_params[:occupation]
      end
      characteristics.each do |c|
        PlayerCharacteristic.create(player_id: @player.id, characteristic_id: c)
      end
      session[:player_id] = @player.id

      render json: @player
      # respond_to do |f|
      #   f.html {redirect_to @player}
      #   f.json {render json: @player}
      # end

    else
      flash[:errors] = ['Something went wrong, try again']
      render :new
    end
  end

  # def next
  #   @next_player = @player.next
  #   render json: @next_player
  # end


  def update

    if @player.update(
      name: player_params[:name],
      password: player_params[:password],
      image: player_params[:image]
    )
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
        PlayerCharacteristic.update(player_id: @player.id, characteristic_id: c)
      end

      respond_to do |f|
        f.html {redirect_to @player}
        f.json {render json: @player}
      end

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
      :image,
      :gender,
      :eye_colour,
      :hair_colour,
      :glasses,
      :facial_hair,
      :alive,
      :wears_hat,
      :occupation,
      :remove_image
    )
  end

  def set_player
    @player = Player.find(params[:id])
  end
end
