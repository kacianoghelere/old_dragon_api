class CharacterSpecializationSerializer < ActiveModel::Serializer
  attributes :id, :name, :flat_name, :min_level, :description, :picture
  belongs_to :alignment
  has_many :stages
end
