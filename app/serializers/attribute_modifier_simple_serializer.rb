class AttributeModifierSimpleSerializer < ActiveModel::Serializer
  attributes :value
  has_one :base_attribute, key: :attribute, serializer: AttributeSimpleSerializer
end