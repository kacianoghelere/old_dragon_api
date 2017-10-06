# == Schema Information
#
# Table name: wiki_categories
#
#  id         :integer          not null, primary key
#  title      :string(45)       not null
#  wiki_name  :string(100)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class WikiCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
