# == Schema Information
#
# Table name: character_class_weapon_types
#
#  id                 :integer          not null, primary key
#  character_class_id :integer          not null
#  weapon_type_id     :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class CharacterClassWeaponType < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :weapon_type
end
