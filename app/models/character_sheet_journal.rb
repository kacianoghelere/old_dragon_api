class CharacterSheetJournal < ActiveRecord::Base
  belongs_to :character_sheet
  belongs_to :alignment
end
