class Character < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :character_race
  belongs_to :user
  has_one :character_attribute
end
