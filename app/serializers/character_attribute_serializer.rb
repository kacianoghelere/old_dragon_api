class CharacterAttributeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :attribute_modifier, serializer: AttributeModifierSerializer
end
