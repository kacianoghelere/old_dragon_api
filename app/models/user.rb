class User < ActiveRecord::Base
  before_save :set_role
  belongs_to :role
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_blank: true

  def is_admin?
    return self.role.admin
  end

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string)
  end

  def User.find_for_authentication(**options)
    self.find_by(options)
  end

  def register_login
    self.update(last_login: DateTime.now)
  end

  private 

    def set_role
      self.role ||= Role.where(admin: false).first
    end
end
