# == Schema Information
#
# Table name: character_specializations
#
#  id                 :integer          not null, primary key
#  name               :string(45)       not null
#  description        :text(65535)      not null
#  min_level          :integer          default("1"), not null
#  alignment_id       :integer
#  character_class_id :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class CharacterSpecializationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
