# == Schema Information
#
# Table name: charisma_mods
#
#  id            :integer          not null, primary key
#  value         :integer          not null
#  followers_mod :integer          default("0"), not null
#  reaction_mod  :integer          default("0"), not null
#  undead_mod    :string(10)       default("0"), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class CharismaMod < ActiveRecord::Base
end
