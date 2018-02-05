class AttributeModifier < ActiveRecord::Base
  belongs_to :base_attribute, class_name: 'Attribute'
  has_many :character_attributes
end
