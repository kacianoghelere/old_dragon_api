# == Schema Information
#
# Table name: character_attributes
#
#  id                    :integer          not null, primary key
#  attribute_modifier_id :integer          not null
#  character_id          :integer          not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class CharacterAttribute < ActiveRecord::Base
  belongs_to :attribute_modifier
  belongs_to :character
end
