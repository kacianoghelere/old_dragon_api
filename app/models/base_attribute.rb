class BaseAttribute < ActiveRecord::Base
  enum base_attributes: {
    strength: 1,
    dexterity: 2,
    constitution: 3,
    intelligence: 4,
    wisdom: 5,
    charisma: 6
  }
  has_many :attribute_modifiers
end
