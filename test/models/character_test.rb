# == Schema Information
#
# Table name: characters
#
#  id                 :integer          not null, primary key
#  name               :string(45)
#  title              :string(45)
#  quote              :string(300)
#  picture            :string(300)
#  weight             :decimal(10, )
#  height             :decimal(10, )
#  age                :integer
#  description        :text(65535)
#  character_class_id :integer          not null
#  character_race_id  :integer          not null
#  user_id            :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
