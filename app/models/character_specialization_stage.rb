# == Schema Information
#
# Table name: character_specialization_stages
#
#  id                          :integer          not null, primary key
#  description                 :text(65535)      not null
#  unlock_level                :integer          not null
#  character_specialization_id :integer          not null
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#

class CharacterSpecializationStage < ActiveRecord::Base
  belongs_to :character_specializations
end
