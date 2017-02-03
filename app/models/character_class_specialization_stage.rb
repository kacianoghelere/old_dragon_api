class CharacterClassSpecializationStage < ActiveRecord::Base
  belongs_to :character_class_specialization
  validates_uniqueness_of :min_level, :scope => :character_class_specialization_id
end
