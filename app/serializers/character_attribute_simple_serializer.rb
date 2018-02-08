class CharacterAttributeSimpleSerializer < ActiveModel::Serializer
  has_one :strength, serializer: AttributeModifierSerializer
  has_one :dexterity, serializer: AttributeModifierSerializer
  has_one :constitution, serializer: AttributeModifierSerializer
  has_one :intelligence, serializer: AttributeModifierSerializer
  has_one :wisdom, serializer: AttributeModifierSerializer
  has_one :charisma, serializer: AttributeModifierSerializer
end
