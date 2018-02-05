# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string(45)       not null
#  admin      :boolean          default("0"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ActiveRecord::Base
end
