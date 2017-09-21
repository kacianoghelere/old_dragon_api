# == Schema Information
#
# Table name: campaign_invitations
#
#  id          :integer          not null, primary key
#  message     :text(65535)
#  completed   :boolean          default("1"), not null
#  campaign_id :integer          not null
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CampaignInvitationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
