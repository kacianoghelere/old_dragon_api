# == Schema Information
#
# Table name: campaign_wiki_pages
#
#  id               :integer          not null, primary key
#  title            :string(45)       not null
#  wiki_name        :string(100)      not null
#  body             :text(65535)
#  picture          :string(300)
#  dm_only          :boolean          default("0"), not null
#  campaign_id      :integer          not null
#  wiki_category_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class CampaignWikiPageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
