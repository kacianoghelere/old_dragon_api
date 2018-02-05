# == Schema Information
#
# Table name: undead_banes
#
#  id                 :integer          not null, primary key
#  level              :integer          default("1"), not null
#  dv1                :string(2)        not null
#  dv2                :string(2)        not null
#  dv3                :string(2)        not null
#  dv4                :string(2)        not null
#  dv5                :string(2)        not null
#  dv6                :string(2)        not null
#  dv7                :string(2)        not null
#  dv8                :string(2)        not null
#  dv9                :string(2)        not null
#  dv10               :string(2)        not null
#  dv11               :string(2)        not null
#  dv12               :string(2)        not null
#  dv13               :string(2)        not null
#  dv14               :string(2)        not null
#  dv15               :string(2)        not null
#  dv16               :string(2)        not null
#  dv17               :string(2)        not null
#  dv18               :string(2)        not null
#  character_class_id :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class UndeadBane < ActiveRecord::Base
  belongs_to :character_class
end
