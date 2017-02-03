class CharacterClassSpecializationStageSerializer < ActiveModel::Serializer
  attributes :id, :description, :min_level
  has_one :character_class_specialization
end
