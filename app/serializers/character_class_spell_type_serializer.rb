class CharacterClassSpellTypeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :character_class
  has_one :spell_type
end
