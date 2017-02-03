class Alignment < ActiveRecord::Base
  has_many :armors
  has_many :character_class_specializations
  has_many :character_races
  has_many :weapons
end
