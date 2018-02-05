# == Schema Information
#
# Table name: character_race_armors
#
#  id                :integer          not null, primary key
#  armor_type_id     :integer          not null
#  character_race_id :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class CharacterRaceArmor < ActiveRecord::Base
  belongs_to :armor_type
  belongs_to :character_race
end
