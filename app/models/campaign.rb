class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :campaign_journals
  has_many :campaign_members
  has_many :campaign_notes
  has_many :characters, through: :campaign_members
end
