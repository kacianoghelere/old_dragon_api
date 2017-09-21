# == Schema Information
#
# Table name: character_race_armors
#
#  id                :integer          not null, primary key
#  armor_type_id     :integer          not null
#  character_race_id :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class CharacterRaceArmorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
