class CampaignNoteSerializer < ActiveModel::Serializer
  attributes :id, :description, :dm_only, :idactive
  has_one :campaign
end
