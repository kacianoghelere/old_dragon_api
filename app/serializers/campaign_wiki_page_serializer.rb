class CampaignWikiPageSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :wiki_name, :picture, :campaign_id
end
