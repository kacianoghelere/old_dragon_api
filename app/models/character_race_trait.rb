class CharacterRaceTrait < ActiveRecord::Base
  belongs_to :character_race
  belongs_to :trait
end
