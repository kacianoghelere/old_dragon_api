class CharacterClassSpecializationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :min_level
  has_one :alignment
  has_one :character_class
end
