# == Schema Information
#
# Table name: character_class_armor_types
#
#  id                 :integer          not null, primary key
#  character_class_id :integer          not null
#  armor_type_id      :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class CharacterClassArmorTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
