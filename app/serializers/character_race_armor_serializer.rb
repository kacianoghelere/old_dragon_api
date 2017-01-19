class CharacterRaceArmorSerializer < ActiveModel::Serializer
  attributes :id
  has_one :armor_type
  has_one :character_race
end
