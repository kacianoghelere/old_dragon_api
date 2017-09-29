class CampaignSimpleSerializer < ActiveModel::Serializer
  attributes :id, :title, :picture
  belongs_to :user, serializer: UserSimpleSerializer, key: :dungeonMaster
end
