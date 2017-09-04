class DexterityModSerializer < ActiveModel::Serializer
  attributes :id, :value, :attack_mod, :surprise_mod, :armor_class_mod, :protection_mod, :lockpick, :traps, :climb, :stealth, :pickpocket, :perception, :sneak_attack
end
