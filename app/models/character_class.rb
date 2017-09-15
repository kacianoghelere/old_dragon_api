class CharacterClass < ActiveRecord::Base
  belongs_to :dice
  belongs_to :character_class_type
  belongs_to :user
  has_one :requirements, class_name: 'CharacterClassRequirement'
  has_many :evolutions, class_name: 'CharacterClassEvolution'
  has_many :thief_talents
  has_many :undead_banes
  has_many :magic_circles, class_name: 'CharacterClassMagicCircle'
end
