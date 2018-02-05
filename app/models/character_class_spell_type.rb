# == Schema Information
#
# Table name: character_class_spell_types
#
#  id                 :integer          not null, primary key
#  character_class_id :integer          not null
#  spell_type_id      :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class CharacterClassSpellType < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :spell_type
end
