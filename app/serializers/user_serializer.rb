class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :login, :last_login
  has_one :role
end
