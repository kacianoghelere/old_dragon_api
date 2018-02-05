# == Schema Information
#
# Table name: character_class_armor_types
#
#  id                 :integer          not null, primary key
#  character_class_id :integer          not null
#  armor_type_id      :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class CharacterClassArmorType < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :armor_type
end
