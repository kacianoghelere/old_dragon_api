# == Schema Information
#
# Table name: weapon_sizes
#
#  id               :integer          not null, primary key
#  name             :string(100)      not null
#  alternative_name :string(100)      not null
#  alias            :string(1)        not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class WeaponSize < ActiveRecord::Base
end
