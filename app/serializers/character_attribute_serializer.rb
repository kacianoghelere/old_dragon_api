class CharacterAttributeSerializer < ActiveModel::Serializer
  attributes :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma
end
