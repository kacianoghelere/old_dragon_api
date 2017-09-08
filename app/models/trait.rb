class Trait < ActiveRecord::Base
  belongs_to :trait_type
  belongs_to :user
end
