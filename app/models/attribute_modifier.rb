class AttributeModifier < ActiveRecord::Base
    belongs_to :base_attribute, class_name: 'Attribute'
    belongs_to :character_attribute
end
