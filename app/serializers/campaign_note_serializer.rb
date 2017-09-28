class CampaignNoteSerializer < ActiveModel::Serializer
  attributes :id, :description, :dm_only, :active
end
