class CharacterClassItemTypeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :character_class
  has_one :item_type
end
