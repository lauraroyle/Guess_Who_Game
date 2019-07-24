class GameCharacterSerializer < ActiveModel::Serializer
  attributes :id
  
  belongs_to :game
  belongs_to :player
end
