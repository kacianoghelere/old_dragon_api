class CharacterClassSimpleSerializer < ActiveModel::Serializer
  attributes :id, :name, :flat_name
end