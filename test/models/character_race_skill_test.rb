# == Schema Information
#
# Table name: character_race_skills
#
#  id                :integer          not null, primary key
#  character_race_id :integer          not null
#  skill_id          :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class CharacterRaceSkillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
