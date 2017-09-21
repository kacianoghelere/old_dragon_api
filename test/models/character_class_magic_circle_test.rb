# == Schema Information
#
# Table name: character_class_magic_circles
#
#  id                 :integer          not null, primary key
#  level              :integer          default("1"), not null
#  circle_1           :integer          default("0"), not null
#  circle_2           :integer          default("0"), not null
#  circle_3           :integer          default("0"), not null
#  circle_4           :integer          default("0"), not null
#  circle_5           :integer          default("0"), not null
#  circle_6           :integer          default("0"), not null
#  circle_7           :integer          default("0"), not null
#  circle_8           :integer          default("0"), not null
#  circle_9           :integer          default("0"), not null
#  character_class_id :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class CharacterClassMagicCircleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
