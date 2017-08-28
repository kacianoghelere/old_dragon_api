class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :weight, :height, :age, :description
  has_one :character_class
  has_one :character_race
  has_one :user
end
