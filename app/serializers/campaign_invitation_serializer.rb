class CampaignInvitationSerializer < ActiveModel::Serializer
  attributes :id, :message, :completed
  has_one :campaign
  has_one :user
end
