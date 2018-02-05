# == Schema Information
#
# Table name: weapons
#
#  id               :integer          not null, primary key
#  name             :string(45)       not null
#  description      :string(500)
#  initiative       :integer          default("0"), not null
#  ranged           :boolean          default("0"), not null
#  range            :integer          default("0"), not null
#  damage           :string(45)       not null
#  weight           :decimal(10, )    not null
#  price            :decimal(10, )    not null
#  alignment_id     :integer          not null
#  dice_id          :integer          not null
#  material_type_id :integer          not null
#  origin_id        :integer          not null
#  user_id          :integer          not null
#  weapon_size_id   :integer          not null
#  weapon_type_id   :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Weapon < ActiveRecord::Base
  belongs_to :alignment
  belongs_to :dice
  belongs_to :material_type
  belongs_to :origin
  belongs_to :user
  belongs_to :weapon_type
end
