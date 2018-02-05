class CampaignJournalSerializer < ActiveModel::Serializer
  attributes :id, :description, :active, :created_at
end
