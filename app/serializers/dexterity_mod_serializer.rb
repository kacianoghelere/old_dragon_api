class DexterityModSerializer < ActiveModel::Serializer
  attributes :id, :value, :attack_mod, :surprise_mod, :armor_class_mod, :protection_mod, :find_traps_mod, :silent_movement_mod, :lockpick_mod, :stealth_mod, :pickpocket_mod
end
