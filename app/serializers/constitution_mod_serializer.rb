class ConstitutionModSerializer < ActiveModel::Serializer
  attributes :id, :value, :hitpoints_mod, :protection_mod, :resurrection_mod
end
