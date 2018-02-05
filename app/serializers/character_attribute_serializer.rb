class CharacterAttributeSerializer < ActiveModel::Serializer
  attributes :id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma
  belongs_to :character
end
