class CharacterJournalSerializer < ActiveModel::Serializer
  attributes :id, :current_level, :current_exp, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :idactive
  has_one :character
  has_one :alignment
end
