class GameSerializer < ActiveModel::Serializer
  attributes :id, :score, :round

  belongs_to :player
  has_many :game_characters
  has_many :questions, through: :game_questions, serializer: GameQuestionSerializer

  ### REMOVED THESE AS I DON'T THINK WE NEED
  # has_many :players, through: :game_characters
  # has_many :game_questions, serializer: GameQuestionSerializer
  
end
