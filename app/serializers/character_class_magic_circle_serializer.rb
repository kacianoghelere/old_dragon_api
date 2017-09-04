class CharacterClassMagicCircleSerializer < ActiveModel::Serializer
  attributes :id, :level, :circle_1, :circle_2, :circle_3, :circle_4, :circle_5, :circle_6, :circle_7, :circle_8, :circle_9
  has_one :character_class
end
