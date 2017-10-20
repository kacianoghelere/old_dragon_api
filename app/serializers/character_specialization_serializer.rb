class CharacterSpecializationSerializer < ActiveModel::Serializer
  attributes :id, :name, :flat_name, :min_level, :description, :picture
  attribute :short_description
  belongs_to :alignment
  belongs_to :character_class, serializer: CharacterClassSimpleSerializer
  has_many :stages

  def short_description
    object.description.truncate(120, :separator => " ")
  end
end
