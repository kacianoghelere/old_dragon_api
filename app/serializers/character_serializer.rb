class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :weight, :height, :age, :description
  has_one :character_class, key: :class
  has_one :character_race, key: :race
  has_one :user
end