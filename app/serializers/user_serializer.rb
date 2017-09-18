class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :user_code, :last_login
  has_many :campaigns
  has_many :characters
  has_one :role
end
