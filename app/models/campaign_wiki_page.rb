class CampaignWikiPage < ActiveRecord::Base
  before_save :generate_wiki_name, only: [:create, :update]
  belongs_to :campaigns

  def generate_wiki_name
    self.wiki_name = self.title.strip.downcase.gsub(' ', '_')
  end
end
