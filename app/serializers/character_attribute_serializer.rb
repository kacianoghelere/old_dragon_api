class CharacterAttributeSerializer < ActiveModel::Serializer
  has_one :strength, serializer: AttributeModifierSimpleSerializer
  has_one :dexterity, serializer: AttributeModifierSimpleSerializer
  has_one :constitution, serializer: AttributeModifierSimpleSerializer
  has_one :intelligence, serializer: AttributeModifierSimpleSerializer
  has_one :wisdom, serializer: AttributeModifierSimpleSerializer
  has_one :charisma, serializer: AttributeModifierSimpleSerializer
end
