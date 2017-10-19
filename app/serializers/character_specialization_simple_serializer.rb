class CharacterSpecializationSimpleSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :min_level, :flat_name, :description
  belongs_to :alignment
end
