# == Schema Information
#
# Table name: characters
#
#  id                 :integer          not null, primary key
#  name               :string(45)
#  title              :string(45)
#  quote              :string(300)
#  picture            :string(300)
#  weight             :decimal(10, 2)
#  height             :decimal(10, 2)
#  age                :integer
#  description        :text(65535)
#  character_class_id :integer          not null
#  character_race_id  :integer          not null
#  user_id            :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Character < ActiveRecord::Base
  include FlatNamed
  enum base_attributes: {
    strength: 1,
    dexterity: 2,
    constitution: 3,
    intelligence: 4,
    wisdom: 5,
    charisma: 6
  }
  belongs_to :character_class
  belongs_to :character_race
  belongs_to :character_specialization
  belongs_to :user
  has_many :campaign_members
  has_many :campaigns, through: :campaign_members
  has_many :journals, class_name: 'CharacterJournal'
  has_many :character_attributes
  has_many :attributes_modifiers, through: :character_attributes
  has_one :status, -> { where active: true }, class_name: 'CharacterJournal'
  has_one :strength, -> { where attribute_id: 1 }, class_name: 'AttributesModifier'
  has_one :dexterity, -> { where attribute_id: 2 }, class_name: 'AttributesModifier'
  has_one :constitution, -> { where attribute_id: 3 }, class_name: 'AttributesModifier'
  has_one :intelligence, -> { where attribute_id: 4 }, class_name: 'AttributesModifier'
  has_one :wisdom, -> { where attribute_id: 5 }, class_name: 'AttributesModifier'
  has_one :charisma, -> { where attribute_id: 6 }, class_name: 'AttributesModifier'
end
