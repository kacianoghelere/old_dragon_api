# == Schema Information
#
# Table name: character_race_weapons
#
#  id                :integer          not null, primary key
#  character_race_id :integer          not null
#  weapon_type_id    :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class CharacterRaceWeapon < ActiveRecord::Base
  belongs_to :character_race
  belongs_to :weapon_type
end
