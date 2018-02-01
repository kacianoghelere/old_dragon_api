# == Schema Information
#
# Table name: character_attributes
#
#  id            :integer          not null, primary key
#  strength      :integer          default("0"), not null
#  dexterity     :integer          default("0"), not null
#  constitution  :integer          default("0"), not null
#  intelligence  :integer          default("0"), not null
#  wisdom        :integer          default("0"), not null
#  charisma      :integer          default("0"), not null
#  character_id  :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
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
