# == Schema Information
#
# Table name: strength_mods
#
#  id         :integer          not null, primary key
#  value      :integer          not null
#  attack_mod :integer          default("0"), not null
#  damage_mod :integer          default("0"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StrengthMod < ActiveRecord::Base
end
