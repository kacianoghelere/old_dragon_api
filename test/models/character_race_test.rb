# == Schema Information
#
# Table name: character_races
#
#  id              :integer          not null, primary key
#  name            :string(45)       not null
#  singular_name   :string(45)       not null
#  description     :text(65535)
#  picture         :string(300)
#  example_picture :string(300)
#  min_height      :decimal(10, )    default("0")
#  max_height      :decimal(10, )    default("0")
#  min_weight      :decimal(10, )
#  max_weight      :decimal(10, )
#  maturity        :integer
#  max_age         :integer
#  movement_base   :integer          default("1"), not null
#  versatile_mod   :boolean          default("0"), not null
#  str_mod         :integer          default("0"), not null
#  dex_mod         :integer          default("0"), not null
#  cons_mod        :integer          default("0"), not null
#  int_mod         :integer          default("0"), not null
#  wis_mod         :integer          default("0"), not null
#  char_mod        :integer          default("0"), not null
#  alignment_id    :integer          not null
#  dice_id         :integer
#  user_id         :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class CharacterRaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
