class CharacterClassMagicCircleSerializer < ActiveModel::Serializer
  attributes :id, :level, :magic_circle_1, :magic_circle_2, :magic_circle_3, :magic_circle_4, :magic_circle_5, :magic_circle_6, :magic_circle_7, :magic_circle_8, :magic_circle_9
  has_one :character_class
end
