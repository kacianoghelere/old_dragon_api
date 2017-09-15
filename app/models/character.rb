class Character < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :character_race
  belongs_to :user
  has_many :journals, class_name: 'CharacterJournal'
end
