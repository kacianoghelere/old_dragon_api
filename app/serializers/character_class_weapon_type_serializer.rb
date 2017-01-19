class CharacterClassWeaponTypeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :character_class
  has_one :weapon_type
end
