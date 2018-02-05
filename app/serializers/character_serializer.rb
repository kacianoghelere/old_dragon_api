class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :flat_name, :title, :quote, :picture, :weight, :height, :age, :description
  belongs_to :character_class,
              serializer: CharacterClassSimpleSerializer, 
              key: :class
  belongs_to :character_race,
              serializer: CharacterRaceSimpleSerializer,
              key: :race
  belongs_to :character_specialization,
              serializer: CharacterSpecializationSimpleSerializer,
              key: :specialization
  has_many :campaigns,
              serializer: CampaignSimpleSerializer
  has_one :character_attribute,
              # serializer: CharacterAttributeSimpleSerializer,
              key: :attributes
  has_one :status,
              serializer: CharacterJournalSerializer
  belongs_to :user,
              serializer: UserSimpleSerializer,
              key: :player
end