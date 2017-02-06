class CharacterClass < ActiveRecord::Base
  alias_attribute :specializations, :character_class_specializations
  alias_attribute :evolutions, :character_class_evolutions
  belongs_to :dice
  belongs_to :perk
  belongs_to :character_class_type
  belongs_to :user
  has_many :character_class_evolutions
  has_many :character_class_specializations
  has_one :character_class_requirement
end
