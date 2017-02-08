class CharacterClassSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :dice, include: [:name]
  has_one :perk
  has_one :character_class_requirement, key: 'requirement'
  has_one :character_class_type, key: 'class_type'
  has_many :character_class_evolutions, key: 'evolutions'
  has_many :character_class_magic_circles, key: 'magic_circles'
  has_many :character_class_specializations, key: 'specializations'
  has_many :character_class_thief_talents, key: 'thief_talents'
  has_one :user
end
