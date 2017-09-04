class ThiefTalentSerializer < ActiveModel::Serializer
  attributes :id, :level, :lockpick, :traps, :climb, :stealth, :pickpocket, :perception, :sneak_attack
end