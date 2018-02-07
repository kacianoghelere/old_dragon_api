class AttributeModifier < ActiveRecord::Base
  belongs_to :base_attribute, class_name: 'Attribute'
end
