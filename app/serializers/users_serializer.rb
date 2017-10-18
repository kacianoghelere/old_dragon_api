class UsersSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :user_code, :last_login
  attribute :gravatar, key: :avatar
  has_one :role

  def gravatar
    md5Hash = Digest::MD5::hexdigest(object.email)
    if object.email
      "https://www.gravatar.com/avatar/#{md5Hash}?s=512"
    end
  end
end
