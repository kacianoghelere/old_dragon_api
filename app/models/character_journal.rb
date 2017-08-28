class CharacterJournal < ActiveRecord::Base
  belongs_to :character
  belongs_to :alignment
end
