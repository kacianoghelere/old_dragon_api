class CharactersSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :weight, :height, :age, :description
  has_many :journals
  has_one :character_class, key: :class, serializer: CharacterClassSerializer
  has_one :character_race, key: :race, serializer: CharacterRaceSerializer
  has_one :user
end