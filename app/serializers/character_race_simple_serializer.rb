class CharacterRaceSimpleSerializer < ActiveModel::Serializer
  attributes :id, :name, :flat_name, :singular_name
end