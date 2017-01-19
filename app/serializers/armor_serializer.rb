class ArmorSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :armor_class, :movement_reduction, :price
  has_one :alignment
  has_one :armor_type
  has_one :origin
  has_one :user
end
