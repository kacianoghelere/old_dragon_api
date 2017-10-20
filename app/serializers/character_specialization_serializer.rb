class CharacterSpecializationSerializer < ActiveModel::Serializer
  attributes :id, :name, :flat_name, :min_level, :description, :picture
  belongs_to :alignment
  belongs_to :character_class, key: :class,
                                serializer: CharacterClassSimpleSerializer
  has_many :stages
end
