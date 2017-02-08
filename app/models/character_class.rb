class CharacterClass < ActiveRecord::Base
  alias_attribute :specializations, :character_class_specializations
  alias_attribute :evolutions, :character_class_evolutions
  alias_attribute :thief_talents, :character_class_thief_talents
  belongs_to :dice
  belongs_to :perk
  belongs_to :character_class_type
  belongs_to :user
  has_many :character_class_evolutions
  has_many :character_class_magic_circles
  has_many :character_class_specializations
  has_many :character_class_thief_talents
  has_one :character_class_requirement
  accepts_nested_attributes_for :character_class_evolutions
  accepts_nested_attributes_for :character_class_magic_circles
  accepts_nested_attributes_for :character_class_requirement
  accepts_nested_attributes_for :character_class_thief_talents
end
