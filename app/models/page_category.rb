# == Schema Information
#
# Table name: page_categories
#
#  id         :integer          not null, primary key
#  title      :string(45)       not null
#  flat_name  :string(100)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PageCategory < ActiveRecord::Base
  include Core

  before_save :generate_flat_name, only: [:create, :update]
  has_many :pages, class_name: 'CampaignPage'

  def generate_flat_name
    self.flat_name = generate_api_name(self.title)
  end
end
