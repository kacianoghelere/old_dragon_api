class Skill < ActiveRecord::Base
  belongs_to :effect
  belongs_to :skill_type
  belongs_to :user
  has_many :character_race_skill
end
