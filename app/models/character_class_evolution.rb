# == Schema Information
#
# Table name: character_class_evolutions
#
#  id                 :integer          not null, primary key
#  level              :integer          default("1"), not null
#  exp                :integer          not null
#  life_amount        :integer          not null
#  plus_life          :boolean          not null
#  attack_base        :integer          not null
#  attack_base2       :integer          default("0"), not null
#  protection_mod     :integer          not null
#  character_class_id :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class CharacterClassEvolution < ActiveRecord::Base
  belongs_to :character_class
end
