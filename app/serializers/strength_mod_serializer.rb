class StrengthModSerializer < ActiveModel::Serializer
  attributes :id, :value, :attack_mod, :damage_mod
end
