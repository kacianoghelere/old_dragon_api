# == Schema Information
#
# Table name: character_classes
#
#  id                      :integer          not null, primary key
#  name                    :string(45)       not null
#  picture                 :string(300)
#  description             :text(65535)
#  dice_id                 :integer          not null
#  character_class_type_id :integer          not null
#  user_id                 :integer          not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class CharacterClass < ActiveRecord::Base
  belongs_to :dice
  belongs_to :character_class_type
  belongs_to :user
  has_one :requirement, class_name: 'CharacterClassRequirement'
  has_many :evolutions, class_name: 'CharacterClassEvolution'
  has_many :thief_talents
  has_many :undead_banes
  has_many :magic_circles, class_name: 'CharacterClassMagicCircle'
end
