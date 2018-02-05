class CampaignPageSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :flat_name, :dm_only, :picture, :campaign_id
  belongs_to :page_category
end
