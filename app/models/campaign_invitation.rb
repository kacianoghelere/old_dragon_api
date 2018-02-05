# == Schema Information
#
# Table name: campaign_invitations
#
#  id          :integer          not null, primary key
#  message     :text(65535)
#  completed   :boolean          default("0"), not null
#  accepted    :boolean          default("0"), not null
#  denied      :boolean          default("0"), not null
#  campaign_id :integer          not null
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CampaignInvitation < ActiveRecord::Base
  belongs_to :campaign
  belongs_to :user

  def self.find_invited_users(campaign_id)
    self.where(completed: false, campaign_id: campaign_id)
      .map {|x| x.user_id}.uniq
  end
end
