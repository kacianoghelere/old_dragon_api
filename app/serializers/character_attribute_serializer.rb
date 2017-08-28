class CharacterAttributeSerializer < ActiveModel::Serializer
  attributes :id, :strength, :dexterity, :constitution, :intelligence, :wisdom
  has_one :character
end
