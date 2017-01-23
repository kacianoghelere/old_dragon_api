class JsonWebToken

  def self.encode(payload)
    signature = Rails.application.secrets.token_signature
    JWT.encode(payload, signature)
  end

  def self.decode(token)
    signature = Rails.application.secrets.token_signature
    return HashWithIndifferentAccess.new(JWT.decode(token, signature)[0])
  rescue
    nil
  end
end