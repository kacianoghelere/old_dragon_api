# == Schema Information
#
# Table name: thief_talents
#
#  id                 :integer          not null, primary key
#  level              :integer          not null
#  lockpick           :integer          not null
#  traps              :integer          not null
#  climb              :integer          not null
#  stealth            :integer          not null
#  pickpocket         :integer          not null
#  perception         :integer          not null
#  sneak_attack       :integer          not null
#  character_class_id :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class ThiefTalent < ActiveRecord::Base
  belongs_to :character_class
end
