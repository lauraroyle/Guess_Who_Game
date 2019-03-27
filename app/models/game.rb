class Game < ApplicationRecord
  has_many :game_characters
  has_many :players, through: :game_characters
  belongs_to :player
  # scope :hair_colour, ->(colour) { where(hair_colour: colour) }

  #method that aliases "Players" as "Characters" for easier reference.
  def characters
    players
  end

  # methods to find all the characters in an active game with a given attribute
  # ex game.glasses("yes") will give you all the characters who wear glasses.
  def glasses(presence)
    characters.where(glasses: presence)
  end

  def facial_hair(presence)
    characters.where(facial_hair: presence)
  end

  def gender(presence)
    characters.where(gender: presence)
  end

  def wears_hat(presence)
    characters.where(wears_hat: presence)
  end

  def alive(presence)
    characters.where(alive: presence)
  end

  # *************************GAME PLAY***********************************

  # this method will choose 25 characters for a 5x5 board. not including self. It will then
  def self.set_up_game_characters(player)
    Game.all.sample(25)
  end

end
