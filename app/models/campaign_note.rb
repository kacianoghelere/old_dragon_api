# == Schema Information
#
# Table name: campaign_notes
#
#  id          :integer          not null, primary key
#  description :string(300)
#  dm_only     :boolean          default("0"), not null
#  idactive    :boolean          default("1"), not null
#  campaign_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CampaignNote < ActiveRecord::Base
  belongs_to :campaign
end
