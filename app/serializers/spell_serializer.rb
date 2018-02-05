class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :range, :duration, :description
  has_one :effect
  has_one :element_type
  has_one :spell_circle
  has_one :user
end
