class CampaignWikiPageSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :campaign_id
end
