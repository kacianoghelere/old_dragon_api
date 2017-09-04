class CharacterClassSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :description
  has_one :dice
  has_one :perk
  has_one :character_class_type, key: :type
  has_one :user
  has_one :character_class_requirement, key: :requirement
end
