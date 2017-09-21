# == Schema Information
#
# Table name: character_race_skills
#
#  id                :integer          not null, primary key
#  character_race_id :integer          not null
#  skill_id          :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class CharacterRaceSkill < ActiveRecord::Base
  belongs_to :character_race
  belongs_to :skill
end
