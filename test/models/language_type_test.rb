# == Schema Information
#
# Table name: language_types
#
#  id          :integer          not null, primary key
#  name        :string(45)       not null
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class LanguageTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
