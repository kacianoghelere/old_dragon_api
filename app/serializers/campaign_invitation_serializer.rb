class CampaignInvitationSerializer < ActiveModel::Serializer
  attributes :id, :message, :accepted, :denied
  has_one :campaign
  has_one :user
end
