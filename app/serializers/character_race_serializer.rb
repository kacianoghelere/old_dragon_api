class CharacterRaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :min_height, :max_height, :min_weight, :max_weight, :maturity, :max_age, :movement_base, :armor_class_mod, :str_mod, :dex_mod, :cons_mod, :int_mod, :wis_mod, :char_mod
  has_one :alignment
  has_one :dice
  has_one :user
end
