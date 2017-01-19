class CharacterRaceLanguageSerializer < ActiveModel::Serializer
  attributes :id
  has_one :character_race
  has_one :language_type
end
