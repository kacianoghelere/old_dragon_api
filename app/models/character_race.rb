class CharacterRace < ActiveRecord::Base
  belongs_to :alignment
  belongs_to :dice
  belongs_to :user
  has_many :character_race_skills
  has_many :skills, through: :character_race_skills
  has_many :character_race_traits
  has_many :traits, through: :character_race_traits
end
