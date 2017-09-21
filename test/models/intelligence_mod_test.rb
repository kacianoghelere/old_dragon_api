# == Schema Information
#
# Table name: intelligence_mods
#
#  id                 :integer          not null, primary key
#  value              :integer          not null
#  languages_mod      :integer          default("0"), not null
#  learn_magic_mod    :integer          default("0"), not null
#  magic_circle_1_mod :integer          default("0"), not null
#  magic_circle_2_mod :integer          default("0"), not null
#  magic_circle_3_mod :integer          default("0"), not null
#  magic_circle_4_mod :integer          default("0"), not null
#  magic_circle_5_mod :integer          default("0"), not null
#  magic_circle_6_mod :integer          default("0"), not null
#  magic_circle_7_mod :integer          default("0"), not null
#  magic_circle_8_mod :integer          default("0"), not null
#  magic_circle_9_mod :integer          default("0"), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class IntelligenceModTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
