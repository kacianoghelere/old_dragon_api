# == Schema Information
#
# Table name: characters
#
#  id                 :integer          not null, primary key
#  name               :string(45)
#  title              :string(45)
#  quote              :string(300)
#  picture            :string(300)
#  weight             :decimal(10, )
#  height             :decimal(10, )
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

  belongs_to :character_class
  belongs_to :character_race
  belongs_to :character_specialization
  belongs_to :user
  has_many :campaign_members
  has_many :campaigns, through: :campaign_members
  has_many :journals,   class_name: 'CharacterJournal'
  has_many :attribute_mods, class_name: 'CharacterAttribute'
  has_one :status, -> { where active: true }, class_name: 'CharacterJournal'
end
