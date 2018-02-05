# == Schema Information
#
# Table name: character_race_traits
#
#  id                :integer          not null, primary key
#  character_race_id :integer          not null
#  trait_id          :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class CharacterRaceTrait < ActiveRecord::Base
  belongs_to :character_race
  belongs_to :trait
end
