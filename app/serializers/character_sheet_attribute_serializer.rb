class CharacterSheetAttributeSerializer < ActiveModel::Serializer
  attributes :id, :strength, :dexterity, :constitution, :intelligence, :wisdom
  has_one :character_sheet
end
