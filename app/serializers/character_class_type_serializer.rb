class CharacterClassTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :protection, :key_attr, :can_use_magic, :can_bane_undead, :has_thief_talents
  belongs_to :spell_type
end
