class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(params[:id])
  end

  def show
    @game = Game.find(params[:id])
  end

end
