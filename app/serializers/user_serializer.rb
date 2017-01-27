class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :login, :inc_date, :last_login, :email, :role_id
  has_one :role
end
