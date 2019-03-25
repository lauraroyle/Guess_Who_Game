class Player < ApplicationRecord
  has_many :player_characteristics
  has_many :characteristics, through: :player_characteristics
end
