class CharacterClassSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :dice
  has_one :perk
  has_one :character_class_type
  has_one :user
end
