class CharacterAttributeSimpleSerializer < ActiveModel::Serializer
  belongs_to :strength,     serializer: AttributeModifierSimpleSerializer
  belongs_to :dexterity,    serializer: AttributeModifierSimpleSerializer
  belongs_to :constitution, serializer: AttributeModifierSimpleSerializer
  belongs_to :intelligence, serializer: AttributeModifierSimpleSerializer
  belongs_to :wisdom,       serializer: AttributeModifierSimpleSerializer
  belongs_to :charisma,     serializer: AttributeModifierSimpleSerializer
  belongs_to :character
end
