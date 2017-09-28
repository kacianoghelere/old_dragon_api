class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :quote, :picture, :weight, :height, :age, :description
  # has_many :journals
  belongs_to :character_class, serializer: CharacterClassSimpleSerializer, 
                               key: :class
  belongs_to :character_race, serializer: CharacterRaceSimpleSerializer,
                              key: :race
  has_one :status, serializer: CharacterJournalSerializer
  belongs_to :user, serializer: UserSimpleSerializer, key: :player
end