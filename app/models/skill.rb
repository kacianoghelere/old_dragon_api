# == Schema Information
#
# Table name: skills
#
#  id            :integer          not null, primary key
#  name          :string(45)
#  description   :string(500)
#  effect_id     :integer
#  skill_type_id :integer          not null
#  user_id       :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Skill < ActiveRecord::Base
  belongs_to :effect
  belongs_to :skill_type
  belongs_to :user
  has_many :character_race_skill
end
