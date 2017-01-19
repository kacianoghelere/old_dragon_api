class PerkSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :perk_type
  has_one :user
end
