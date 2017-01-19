class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :login, :pass, :inc_date, :last_login, :email
  has_one :role
end
