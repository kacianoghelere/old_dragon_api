# == Schema Information
#
# Table name: character_race_thief_talents
#
#  id                :integer          not null, primary key
#  lockpick          :integer
#  traps             :integer
#  climb             :integer
#  stealth           :integer
#  pickpocket        :integer
#  perception        :integer
#  sneak_attack      :integer
#  character_race_id :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class CharacterRaceThiefTalent < ActiveRecord::Base
  belongs_to :character_race
end
