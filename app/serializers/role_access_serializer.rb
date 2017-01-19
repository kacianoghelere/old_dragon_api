class RoleAccessSerializer < ActiveModel::Serializer
  attributes :id, :id_menu_item
  has_one :role
end
