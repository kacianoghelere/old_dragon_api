# == Schema Information
#
# Table name: campaigns
#
#  id              :integer          not null, primary key
#  title           :string(45)       not null
#  picture         :string(300)
#  description     :text(65535)
#  start_date      :datetime         not null
#  conclusion_date :datetime
#  user_id         :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Campaign < ActiveRecord::Base
  after_create :generate_first_page
  belongs_to :user
  has_many :journals, class_name: 'CampaignJournal', dependent: :destroy
  has_many :campaign_members
  has_many :characters, -> { order('id') }, through: :campaign_members
  has_many :notes, class_name: 'CampaignNote', dependent: :destroy
  has_many :pages, class_name: 'CampaignWikiPage', dependent: :destroy
  has_many :users, -> { order('id') }, through: :characters
  accepts_nested_attributes_for :journals, :allow_destroy => true
  accepts_nested_attributes_for :notes, :allow_destroy => true

  def add_members(characters)
    # debugger
    characters.each do |character|
      self.campaign_members.create!({character_id: character[:id]})
    end
  end

  def generate_first_page
    self.pages.create!({
      title: "Bem-vindo ao #{self.title} Wiki!",
      body: "Esta é a primeira página da wiki da sua campanha!"\
        " Você pode editá-la ou criar novas páginas divididas por categorias,"\
        " só não vale deixar de se divertir ;)"
    })
  end
end
