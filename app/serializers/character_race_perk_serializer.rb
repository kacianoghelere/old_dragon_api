class CharacterRacePerkSerializer < ActiveModel::Serializer
  attributes :id
  has_one :character_race
  has_one :perk
end
