# == Schema Information
#
# Table name: character_specializations
#
#  id                 :integer          not null, primary key
#  name               :string(45)       not null
#  description        :text(65535)      not null
#  min_level          :integer          default("1"), not null
#  alignment_id       :integer
#  character_class_id :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class CharacterSpecialization < ActiveRecord::Base
  include FlatNamed
  
  before_save :generate_flat_name, only: [:create, :update]

  belongs_to :alignment
  belongs_to :character_class
  has_many :characters
  has_many :stages, class_name: 'CharacterSpecializationStage'
  accepts_nested_attributes_for :stages
end
