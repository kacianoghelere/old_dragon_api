# == Schema Information
#
# Table name: character_class_types
#
#  id                :integer          not null, primary key
#  name              :string(45)       not null
#  protection        :integer          not null
#  key_attr          :string(4)        default("0"), not null
#  can_use_magic     :boolean          default("0"), not null
#  can_bane_undead   :boolean          default("0"), not null
#  has_thief_talents :boolean          default("0"), not null
#  spell_type_id     :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class CharacterClassType < ActiveRecord::Base
  belongs_to :spell_type
end
