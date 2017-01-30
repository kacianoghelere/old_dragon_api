class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :login, :last_login, :email, :role_id
  has_one :role
end
