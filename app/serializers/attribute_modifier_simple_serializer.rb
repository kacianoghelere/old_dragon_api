class AttributeModifierSimpleSerializer < ActiveModel::Serializer
  attributes :value
  belongs_to :base_attribute, serializer: BaseAttributeSimpleSerializer
end