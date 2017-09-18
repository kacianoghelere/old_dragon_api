class CampaignInvitation < ActiveRecord::Base
  belongs_to :campaign
  belongs_to :user

  def self.find_invited_users(campaign_id)
    self.where(campaign_id: campaign_id).map {|x| x.user_id}.uniq
  end
end
