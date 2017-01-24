class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :login, :inc_date, :last_login, :email
  has_one :role
end
