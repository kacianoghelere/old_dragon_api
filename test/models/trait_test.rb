# == Schema Information
#
# Table name: traits
#
#  id                  :integer          not null, primary key
#  name                :string(45)
#  description         :string(500)
#  armor_class_bonus   :integer          default("0")
#  meele_attack_bonus  :integer          default("0")
#  ranged_attack_bonus :integer          default("0")
#  lockpick            :integer          default("0")
#  traps               :integer          default("0")
#  climb               :integer          default("0")
#  stealth             :integer          default("0")
#  pickpocket          :integer          default("0")
#  perception          :integer          default("0")
#  sneak_attack        :integer          default("0")
#  trait_type_id       :integer          not null
#  user_id             :integer          not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class TraitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
