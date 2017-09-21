# == Schema Information
#
# Table name: item_types
#
#  id         :integer          not null, primary key
#  name       :string(45)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ItemType < ActiveRecord::Base
end
