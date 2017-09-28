# == Schema Information
#
# Table name: campaign_members
#
#  id           :integer          not null, primary key
#  campaign_id  :integer          not null
#  character_id :integer          not null
#  active       :boolean          default("1"), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class CampaignMember < ActiveRecord::Base
  belongs_to :campaign
  belongs_to :character
end
