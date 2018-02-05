class CharacterRaceThiefTalentSerializer < ActiveModel::Serializer
  attributes :id, :lockpick, :traps, :climb, :stealth, :pickpocket, :perception, :sneak_attack
  has_one :character_race
end
