class CharacterJournalSerializer < ActiveModel::Serializer
  attributes :id, :current_level, :current_exp, :idactive
  has_one :character
  has_one :alignment
end
