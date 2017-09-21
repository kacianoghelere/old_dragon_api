# == Schema Information
#
# Table name: campaign_journals
#
#  id          :integer          not null, primary key
#  title       :string(45)       not null
#  description :text(65535)      not null
#  idactive    :boolean          default("1"), not null
#  campaign_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CampaignJournal < ActiveRecord::Base
  belongs_to :campaign
end
