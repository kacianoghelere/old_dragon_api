class CharacterClassSimpleSerializer < ActiveModel::Serializer
  attributes :id, :name, :style, :flat_name
end