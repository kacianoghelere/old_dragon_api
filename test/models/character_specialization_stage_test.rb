# == Schema Information
#
# Table name: character_specialization_stages
#
#  id                          :integer          not null, primary key
#  description                 :text(65535)      not null
#  unlock_level                :integer          not null
#  character_specialization_id :integer          not null
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#

require 'test_helper'

class CharacterSpecializationStageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
