# == Schema Information
#
# Table name: character_attributes
#
#  id               :integer          not null, primary key
#  strength_id      :integer          default("0"), not null
#  dexterity_id     :integer          default("0"), not null
#  constitution_id  :integer          default("0"), not null
#  intelligence_id  :integer          default("0"), not null
#  wisdom_id        :integer          default("0"), not null
#  charisma_id      :integer          default("0"), not null
#  character_id     :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class CharacterAttribute < ActiveRecord::Base
  belongs_to :character
  belongs_to :strength,     class_name: 'AttributeModifier'
  belongs_to :dexterity,    class_name: 'AttributeModifier'
  belongs_to :constitution, class_name: 'AttributeModifier'
  belongs_to :intelligence, class_name: 'AttributeModifier'
  belongs_to :wisdom,       class_name: 'AttributeModifier'
  belongs_to :charisma,     class_name: 'AttributeModifier'
end
