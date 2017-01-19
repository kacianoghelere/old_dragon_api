class ExpertiseSerializer < ActiveModel::Serializer
  attributes :id, :name, :modifier, :attr
  has_one :user
end
