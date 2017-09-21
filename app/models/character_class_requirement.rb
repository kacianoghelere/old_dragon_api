# == Schema Information
#
# Table name: character_class_requirements
#
#  id                 :integer          not null, primary key
#  str_mod            :integer          default("0"), not null
#  dex_mod            :integer          default("0"), not null
#  cons_mod           :integer          default("0"), not null
#  int_mod            :integer          default("0"), not null
#  wis_mod            :integer          default("0"), not null
#  char_mod           :integer          default("0"), not null
#  character_class_id :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class CharacterClassRequirement < ActiveRecord::Base
  belongs_to :character_class
end
