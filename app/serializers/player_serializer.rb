class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :top_score, :image
  
  has_many :games
  # has_many :player_characteristics - I figured I don't need this as the .json is giving me characteristic id + name
  has_many :characteristics, through: :player_characteristics
end
