class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :effect
  has_one :skill_type, key: :type
  has_one :user
end
