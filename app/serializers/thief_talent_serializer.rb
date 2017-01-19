class ThiefTalentSerializer < ActiveModel::Serializer
  attributes :id, :level, :lockpick, :find_traps, :climb, :silent_movement, :stealth, :pickpocket, :hear_noises, :backstab
end
