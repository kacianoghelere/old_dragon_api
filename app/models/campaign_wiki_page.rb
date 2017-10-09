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

class CampaignWikiPage < ActiveRecord::Base
  include Core

  before_save :generate_wiki_name, only: [:create, :update]
  belongs_to :campaign
  belongs_to :wiki_category

  def generate_wiki_name
    # wiki_name = self.title.unicode_normalize(:nfkd).encode('ASCII', replace: '')
    # wiki_name = wiki_name.strip.downcase
    # wiki_name = wiki_name.strip.gsub('\,', ' ')
    # wiki_name = wiki_name.strip.gsub('\.', ' ')
    # wiki_name = wiki_name.strip.gsub(' ', '_')
    # self.wiki_name = wiki_name
    self.wiki_name = generate_api_name(self.title)
  end
end
