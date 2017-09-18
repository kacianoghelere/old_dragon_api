class UsersSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :user_code, :last_login
  has_one :role
end
