class Characteristic < ApplicationRecord
  has_many :player_characteristics
  has_many :players, through: :player_characteristics
end
