class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :start_date, :conclusion_date
  has_many :campaign_journals
  has_many :campaign_members
  has_many :campaign_notes
  has_many :characters, :through :campaign_members
  has_one :user
end
