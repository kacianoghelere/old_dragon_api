class CharacterClassSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :dice, include: [:name]
  has_one :perk
  has_one :character_class_requirement
  has_one :character_class_type, key: 'class_type'
  has_one :user
  has_many :character_class_evolutions, key: 'evolutions'
  has_many :character_class_specializations, key: 'specializations'
end
