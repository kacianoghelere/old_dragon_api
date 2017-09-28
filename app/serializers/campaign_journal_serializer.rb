class CampaignJournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :active
end
