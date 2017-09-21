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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
    @other = users(:two)
  end

  test "the truth" do
    
  end
end
