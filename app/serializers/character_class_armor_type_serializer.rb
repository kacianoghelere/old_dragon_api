class CharacterClassArmorTypeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :character_class
  has_one :armor_type
end
