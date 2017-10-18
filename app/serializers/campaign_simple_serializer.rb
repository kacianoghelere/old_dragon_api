class CampaignSimpleSerializer < ActiveModel::Serializer
  attributes :id, :uuid, :title, :picture
  belongs_to :user, serializer: UserSimpleSerializer, key: :dungeonMaster
end
