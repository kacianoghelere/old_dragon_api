class CharacterClass < ActiveRecord::Base
  alias_attribute :specializations, :character_class_specializations
  belongs_to :dice
  belongs_to :perk
  belongs_to :character_class_type
  belongs_to :user
  has_many :character_class_specializations
end
