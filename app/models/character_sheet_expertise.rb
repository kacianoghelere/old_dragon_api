class CharacterSheetExpertise < ActiveRecord::Base
  belongs_to :character_sheet
  belongs_to :expertise
end
