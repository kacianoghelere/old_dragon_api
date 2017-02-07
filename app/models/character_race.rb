class CharacterRace < ActiveRecord::Base
  belongs_to :alignment
  belongs_to :dice
  belongs_to :user
  accepts_nested_attributes_for :character_class_evolutions
  accepts_nested_attributes_for :character_race_thief_talent
end
