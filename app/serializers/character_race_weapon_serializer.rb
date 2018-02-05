class CharacterRaceWeaponSerializer < ActiveModel::Serializer
  attributes :id
  has_one :character_race
  has_one :weapon_type
end
