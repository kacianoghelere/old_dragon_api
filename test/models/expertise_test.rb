# == Schema Information
#
# Table name: expertises
#
#  id         :integer          not null, primary key
#  name       :string(45)
#  modifier   :integer
#  attr       :string(4)
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ExpertiseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
