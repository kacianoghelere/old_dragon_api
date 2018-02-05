class UserSimpleSerializer < ActiveModel::Serializer
  attributes :id, :name
  attribute :gravatar, key: :avatar

  def gravatar
    md5Hash = Digest::MD5::hexdigest(object.email)
    if object.email
      "https://www.gravatar.com/avatar/#{md5Hash}?s=512"
    end
  end
end
