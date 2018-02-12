class CharacterAttributeSimpleSerializer < ActiveModel::Serializer
  attributes :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma
end
