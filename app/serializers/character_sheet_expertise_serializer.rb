class CharacterSheetExpertiseSerializer < ActiveModel::Serializer
  attributes :id
  has_one :character_sheet
  has_one :expertise
end
