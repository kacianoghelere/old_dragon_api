# == Schema Information
#
# Table name: alignments
#
#  id         :integer          not null, primary key
#  name       :string(15)       not null
#  style      :string(45)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Alignment < ActiveRecord::Base
end
