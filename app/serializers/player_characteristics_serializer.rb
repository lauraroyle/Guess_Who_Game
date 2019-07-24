class PlayerCharacteristicsSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :player
  belongs_to :characteristic
end
