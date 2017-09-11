class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :title, :picture, :description, :start_date, :conclusion_date
  has_many :journals
  has_many :notes
  has_many :characters, through: :campaign_members
  has_one :user
end
