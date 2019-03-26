class Game < ApplicationRecord
  has_many :game_characters
  has_many :players, through: :game_characters
  belongs_to :player
  # scope :hair_colour, ->(colour) { where(hair_colour: colour) }

  #method that will return all the characters in a game
  def characters
    players
  end

  def hair_colour(colour)
    characters.where(hair_colour: colour)
  end

  def eye_colour(colour)
    characters.where(eye_colour: colour)
  end
end
