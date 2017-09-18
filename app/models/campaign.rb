class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :journals, class_name: 'CampaignJournal', dependent: :destroy
  has_many :campaign_members
  has_many :notes, class_name: 'CampaignNote', dependent: :destroy
  has_many :characters, through: :campaign_members
  accepts_nested_attributes_for :journals, :allow_destroy => true
  accepts_nested_attributes_for :notes, :allow_destroy => true

  def find_users
    self.characters.map {|char| char.user_id}.uniq
  end
end
