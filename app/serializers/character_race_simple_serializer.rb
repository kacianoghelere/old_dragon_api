class CharacterRaceSimpleSerializer < ActiveModel::Serializer
  attributes :id, :name, :singular_name
end