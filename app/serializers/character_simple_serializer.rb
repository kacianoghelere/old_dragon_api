class CharacterSimpleSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :quote, :picture
  belongs_to :character_class, serializer: CharacterClassSimpleSerializer, 
                               key: :class
  belongs_to :character_race, serializer: CharacterRaceSimpleSerializer,
                              key: :race
  has_one :character_attribute,
              serializer: CharacterAttributeSimpleSerializer,
              key: :attributes
  belongs_to :user, serializer: UserSimpleSerializer, key: :player 
  has_one :status, serializer: CharacterJournalSerializer
end