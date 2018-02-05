class CharacterRaceTraitSerializer < ActiveModel::Serializer
  attributes :id
  has_one :character_race
  has_one :trait
end
