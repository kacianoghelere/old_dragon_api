class CharacterClass < ActiveRecord::Base
  belongs_to :dice
  belongs_to :character_class_type
  belongs_to :user
  has_one :character_class_requirement
  has_many :character_class_evolutions
  has_many :thief_talents
  has_many :undead_banes
  has_many :character_class_magic_circles
end
