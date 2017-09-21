# == Schema Information
#
# Table name: dexterity_mods
#
#  id              :integer          not null, primary key
#  value           :integer          not null
#  attack_mod      :integer          default("0"), not null
#  surprise_mod    :integer          default("0"), not null
#  armor_class_mod :integer          default("0"), not null
#  protection_mod  :integer          default("0"), not null
#  lockpick        :integer
#  traps           :integer
#  climb           :integer
#  stealth         :integer
#  pickpocket      :integer
#  perception      :integer
#  sneak_attack    :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class DexterityMod < ActiveRecord::Base
end
