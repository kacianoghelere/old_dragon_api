# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  name         :string(45)       not null
#  description  :string(500)
#  weight       :decimal(10, )
#  price        :integer
#  item_type_id :integer          not null
#  user_id      :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Item < ActiveRecord::Base
  belongs_to :item_type
  belongs_to :user
end
