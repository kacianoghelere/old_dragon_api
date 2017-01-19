class CampainMemberSerializer < ActiveModel::Serializer
  attributes :id, :idactive
  has_one :campain
  has_one :character_sheet
end
