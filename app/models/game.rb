class Game < ApplicationRecord
  has_many :game_characters
  has_many :players, through: :game_characters
  belongs_to :player
end
