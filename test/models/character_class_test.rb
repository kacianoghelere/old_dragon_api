# == Schema Information
#
# Table name: character_classes
#
#  id                      :integer          not null, primary key
#  name                    :string(45)       not null
#  picture                 :string(300)
#  example_picture         :string(300)
#  description             :text(65535)
#  dice_id                 :integer          not null
#  character_class_type_id :integer          not null
#  user_id                 :integer          not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

require 'test_helper'

class CharacterClassTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
