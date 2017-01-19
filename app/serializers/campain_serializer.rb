class CampainSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :start_date, :conclusion_date
  has_one :user
end
