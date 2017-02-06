class CharacterClassSpecializationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :alignment
  has_one :character_class
  has_many :character_class_specialization_stages, key: 'stages'
end
