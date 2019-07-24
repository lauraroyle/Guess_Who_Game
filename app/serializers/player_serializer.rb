class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :top_score, :image
  
  # has_many :games
  # has_many :player_characteristics
  # has_many :characteristics, through: :player_characteristics, serializer: PlayerCharacteristicsSerializer

  has_many :game_characters
  has_many :games, through: :game_characters
  has_many :games
  has_many :player_characteristics
  has_many :characteristics, through: :player_characteristics
end