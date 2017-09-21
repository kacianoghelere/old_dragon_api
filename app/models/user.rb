# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(45)       not null
#  user_code       :string(45)       not null
#  password_digest :string(255)
#  last_login      :datetime
#  email           :string(64)
#  role_id         :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  belongs_to :role
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_blank: true
  has_many :campaigns
  has_many :characters
  has_many :campaign_invitations#, -> { where completed: false }

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string)
  end

  def User.find_for_authentication(**options)
    self.find_by(options)
  end

  def register_log_in()
    self.update_attribute(:last_login, DateTime.now)
  end
end
