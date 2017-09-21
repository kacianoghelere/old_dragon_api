# == Schema Information
#
# Table name: effects
#
#  id             :integer          not null, primary key
#  name           :string(45)
#  description    :string(500)
#  effect_type_id :integer          not null
#  user_id        :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Effect < ActiveRecord::Base
  belongs_to :effect_type
  belongs_to :user
end
