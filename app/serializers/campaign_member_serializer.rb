class CampaignMemberSerializer < ActiveModel::Serializer
  attributes :id, :active
  has_one :campaign
  has_one :character, serializer: CharacterSerializer
end
