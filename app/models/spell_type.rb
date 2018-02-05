# == Schema Information
#
# Table name: spell_types
#
#  id         :integer          not null, primary key
#  name       :string(45)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SpellType < ActiveRecord::Base
end
