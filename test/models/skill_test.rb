# == Schema Information
#
# Table name: skills
#
#  id            :integer          not null, primary key
#  name          :string(45)
#  description   :string(500)
#  effect_id     :integer
#  skill_type_id :integer          not null
#  user_id       :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
