class CharacterRace < ActiveRecord::Base
  belongs_to :alignment
  belongs_to :dice
  belongs_to :user
  has_many :character_race_thief_talents  
  accepts_nested_attributes_for :character_race_thief_talents
end
