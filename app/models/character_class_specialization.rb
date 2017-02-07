class CharacterClassSpecialization < ActiveRecord::Base
  alias_attribute :stages, :character_class_specialization_stages
  belongs_to :alignment
  belongs_to :character_class
  has_many :character_class_specialization_stages
  accepts_nested_attributes_for :character_class_specialization_stages
end
