# == Schema Information
#
# Table name: constitution_mods
#
#  id               :integer          not null, primary key
#  value            :integer          not null
#  hitpoints_mod    :integer          default("0"), not null
#  protection_mod   :integer          default("0"), not null
#  resurrection_mod :integer          default("0"), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class ConstitutionMod < ActiveRecord::Base
end
