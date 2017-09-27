class CharacterSimpleSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :picture
  belongs_to :character_class, serializer: CharacterClassSimpleSerializer, 
                               key: :class
  belongs_to :character_race, serializer: CharacterRaceSimpleSerializer,
                              key: :race
  belongs_to :user, serializer: UserSimpleSerializer, key: :player
end