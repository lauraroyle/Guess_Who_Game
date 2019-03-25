class CharacteristicsController < ApplicationController
   before_action :set_characteristic, only: %i[edit update]
  def edit
  end

  def new
    @charactistic = Charactistic.new
  end

  def create
    @characteristic = Characteristic.new(characteristic_params)
    if @characteristic.valid?
      @characteristic.save
      #redirect_to @characteristic
    else
      render :new
    end
  end

  def update
    if @charactistic.update(charactistic_params)
      #redirect_to @charactistic
    else
      render :edit
    end
  end

  private

    def characteristic_params
      params.require(:characteristic).permit(:name)
    end

    def set_characteristic
      @characteristic = Characteristic.find(params[:id])
    end
end
