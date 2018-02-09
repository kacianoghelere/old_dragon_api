class CharacterAttributeSimpleSerializer < ActiveModel::Serializer
  attribute :strength
  attribute :dexterity
  attribute :constitution
  attribute :intelligence
  attribute :wisdom
  attribute :charisma

  def strength
    object.strength.value
  end

  def dexterity
    object.dexterity.value
  end

  def constitution
    object.constitution.value
  end

  def intelligence
    object.intelligence.value
  end

  def wisdom
    object.wisdom.value
  end

  def charisma
    object.charisma.value
  end
end
