class SpellCircleSerializer < ActiveModel::Serializer
  attributes :id, :circle
  has_one :spell_type
end
