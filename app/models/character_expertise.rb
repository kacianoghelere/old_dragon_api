class CharacterExpertise < ActiveRecord::Base
  belongs_to :character
  belongs_to :expertise
end
