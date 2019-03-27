class PlayerCharacteristic < ApplicationRecord
  belongs_to :player
  belongs_to :characteristic
end
