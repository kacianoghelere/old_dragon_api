# == Schema Information
#
# Table name: character_journals
#
#  id            :integer          not null, primary key
#  current_level :integer
#  current_exp   :integer
#  strength      :integer          default("0"), not null
#  dexterity     :integer          default("0"), not null
#  constitution  :integer          default("0"), not null
#  intelligence  :integer          default("0"), not null
#  wisdom        :integer          default("0"), not null
#  charisma      :integer          default("0"), not null
#  active        :boolean          default("1"), not null
#  character_id  :integer          not null
#  alignment_id  :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class CharacterJournalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
