# == Schema Information
#
# Table name: character_expertises
#
#  id           :integer          not null, primary key
#  character_id :integer          not null
#  expertise_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class CharacterExpertise < ActiveRecord::Base
  belongs_to :character
  belongs_to :expertise
end
