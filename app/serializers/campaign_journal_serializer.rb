class CampaignJournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :idactive
  has_one :campaign
end
