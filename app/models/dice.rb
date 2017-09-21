# == Schema Information
#
# Table name: dices
#
#  id         :integer          not null, primary key
#  name       :string(4)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Dice < ActiveRecord::Base
end
