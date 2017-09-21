# == Schema Information
#
# Table name: origins
#
#  id         :integer          not null, primary key
#  name       :string(45)       not null
#  variation  :string(45)       not null
#  bonus      :integer          default("0"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OriginTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
