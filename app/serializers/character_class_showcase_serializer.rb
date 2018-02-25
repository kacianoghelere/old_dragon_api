class CharacterClassShowcaseSerializer < ActiveModel::Serializer
  attributes :id, :name, :flat_name, :picture, :example_picture_1, :example_picture_2, :example_picture_3, :description
  attribute :short_description
  has_one :dice
  has_one :character_class_type, key: :type
  has_one :user
  has_one :requirement
  has_many :evolutions
  has_many :thief_talents, if: :has_thief_talents?
  has_many :undead_banes, if: :can_bane_undead?
  has_many :magic_circles, if: :can_use_magic?
  has_many :specializations, serializer: CharacterSpecializationSimpleSerializer

  def has_thief_talents?
    true if object.character_class_type.has_thief_talents
  end

  def can_bane_undead?
    true if object.character_class_type.can_bane_undead
  end

  def can_use_magic?
    true if object.character_class_type.can_use_magic
  end

  def short_description
    object.description.split('.').first unless object.description.empty?
  end
end
