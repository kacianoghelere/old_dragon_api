class CharacterClassEvolutionSerializer < ActiveModel::Serializer
  attributes :id, :level, :exp, :life_amount, :plus_life, :attack_base, :attack_base2, :protection_mod
  has_one :character_class
end
