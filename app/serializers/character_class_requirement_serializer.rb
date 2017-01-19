class CharacterClassRequirementSerializer < ActiveModel::Serializer
  attributes :id, :str_mod, :dex_mod, :cons_mod, :int_mod, :wis_mod, :char_mod
  has_one :character_classes
end
