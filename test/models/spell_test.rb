# == Schema Information
#
# Table name: spells
#
#  id              :integer          not null, primary key
#  name            :string(45)       not null
#  range           :string(45)       not null
#  duration        :string(45)       not null
#  description     :string(500)      not null
#  effect_id       :integer          not null
#  element_type_id :integer          not null
#  spell_circle_id :integer          not null
#  user_id         :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class SpellTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
