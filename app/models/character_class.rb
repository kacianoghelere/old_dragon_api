class CharacterClass < ActiveRecord::Base
  belongs_to :dice
  belongs_to :perk
  belongs_to :character_class_type
  belongs_to :user
  has_one :character_class_requirement
  has_many :character_class_evolutions
end
