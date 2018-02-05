class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :weight, :price
  has_one :item_type
  has_one :user
end
