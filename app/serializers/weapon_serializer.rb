class WeaponSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :initiative, :ranged, :range, :damage, :weight, :price
  has_one :alignment
  has_one :dice
  has_one :material_type
  has_one :origin
  has_one :user
  has_one :weapon_type
end
