class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :journals, class_name: 'CampaignJournal'
  has_many :campaign_members
  has_many :notes, class_name: 'CampaignNote'
  has_many :characters, through: :campaign_members
end
