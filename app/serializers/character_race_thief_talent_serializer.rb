class CharacterRaceThiefTalentSerializer < ActiveModel::Serializer
  attributes :id, :lockpick_mod, :find_traps_mod, :climb_mod, :silent_movement_mod, :stealth_mod, :pickpocket_mod, :hear_noises_mod, :backstab_mod
  has_one :character_race
end
