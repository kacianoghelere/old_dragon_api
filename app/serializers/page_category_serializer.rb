class PageCategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :flat_name
  has_many :pages, serializer: CampaignPageSimpleSerializer
end