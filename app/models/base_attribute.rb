class BaseAttribute < ActiveRecord::Base
    has_many :attribute_modifiers
end
