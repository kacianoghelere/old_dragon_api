class CharacterClassTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :magic, :protection, :key_attr, :can_bane_undead, :has_thief_talents
end
