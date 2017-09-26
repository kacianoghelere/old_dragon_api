class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :picture, :weight, :height, :age, :description
  has_many :journals
  has_one :character_class, key: :class
  has_one :character_race, key: :race
  has_one :user

  class CharacterClassSerializer < ActiveModel::Serializer
    attributes :id, :name
  end

  class CharacterRaceSerializer < ActiveModel::Serializer
    attributes :id, :name, :singular_name
  end
end