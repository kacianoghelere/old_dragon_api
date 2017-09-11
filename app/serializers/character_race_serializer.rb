class CharacterRaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :picture, :min_height, :max_height, :min_weight, :max_weight, :maturity, :max_age, :movement_base, :versatile_mod, :str_mod, :dex_mod, :cons_mod, :int_mod, :wis_mod, :char_mod
  attribute :short_description
  has_one :alignment
  has_one :dice
  has_one :user
  has_many :traits
  has_many :skills

  def short_description
    object.description.split('.').first unless object.description.empty?
  end
end
