class CampaignJournalSerializer < ActiveModel::Serializer
  attributes :id, :description, :idactive, :log_date
  has_one :campaign
end
