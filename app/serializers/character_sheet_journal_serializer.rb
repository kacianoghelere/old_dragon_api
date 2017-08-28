class CharacterSheetJournalSerializer < ActiveModel::Serializer
  attributes :id, :current_level, :current_exp, :idactive
  has_one :character_sheet
  has_one :alignment
end
