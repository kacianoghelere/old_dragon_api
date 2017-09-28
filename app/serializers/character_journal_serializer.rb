class CharacterJournalSerializer < ActiveModel::Serializer
  attributes :id, :current_level, :current_exp, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :active
  has_one :character
  has_one :alignment, serializer: AlignmentSerializer
end
