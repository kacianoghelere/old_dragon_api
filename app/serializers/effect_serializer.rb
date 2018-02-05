class EffectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :effect_type
  has_one :user
end
