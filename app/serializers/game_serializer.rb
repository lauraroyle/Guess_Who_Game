class GameSerializer < ActiveModel::Serializer
  attributes :id, :score, :round

  belongs_to :player
  has_many :game_characters
  has_many :players, through: :game_characters
  # has_many :game_questions
  # has_many :questions, through: :game_questions
end
