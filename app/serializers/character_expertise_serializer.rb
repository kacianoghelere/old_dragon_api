class CharacterExpertiseSerializer < ActiveModel::Serializer
  attributes :id
  has_one :character
  has_one :expertise
end
