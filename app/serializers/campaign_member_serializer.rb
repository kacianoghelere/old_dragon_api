class CampaignMemberSerializer < ActiveModel::Serializer
  attributes :id, :idactive
  has_one :campaign
  has_one :character, serializer: CharacterSerializer
end
