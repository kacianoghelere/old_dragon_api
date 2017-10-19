class CharacterClassSerializer < ActiveModel::Serializer
  attributes :id, :name, :flat_name, :picture, :description
  attribute :short_description
  has_one :dice
  has_one :character_class_type, key: :type
  has_one :user
  has_one :requirement

  def short_description
    object.description.split('.').first unless object.description.empty?
  end
end
