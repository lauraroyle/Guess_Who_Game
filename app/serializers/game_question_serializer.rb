class GameQuestionSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :game
  belongs_to :question 
end
