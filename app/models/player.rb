class Player < ApplicationRecord
  has_many :player_characteristics
  has_many :characteristics, through: :player_characteristics


  has_many :game_characters
  has_many :games, through: :game_characters
  has_many :games




end
