class CampaignWikiPageSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :wiki_name, :dm_only, :picture, :campaign_id
  belongs_to :wiki_category
end
