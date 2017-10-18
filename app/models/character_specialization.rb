class CharacterSpecialization < ActiveRecord::Base
  belongs_to :character_class
  has_many :characters
  has_many :stages, class_name: 'CharacterSpecializationStage'
  accepts_nested_attributes_for :stages
end
