class CharacterRaceSkillSerializer < ActiveModel::Serializer
  attributes :id
  has_one :character_race
  has_one :skill
end
