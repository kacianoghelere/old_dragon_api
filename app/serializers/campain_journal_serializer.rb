class CampainJournalSerializer < ActiveModel::Serializer
  attributes :id, :description, :idactive, :log_date
  has_one :campain
end
