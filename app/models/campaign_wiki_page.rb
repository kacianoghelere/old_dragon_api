# == Schema Information
#
# Table name: campaign_wiki_pages
#
#  id               :integer          not null, primary key
#  title            :string(45)       not null
#  wiki_name        :string(100)      not null
#  body             :text(65535)
#  picture          :string(300)
#  dm_only          :boolean          default("0"), not null
#  campaign_id      :integer          not null
#  wiki_category_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class CampaignWikiPage < ActiveRecord::Base
  before_save :generate_wiki_name, only: [:create, :update]
  belongs_to :campaign
  belongs_to :wiki_category

  def generate_wiki_name
    # string.tr( "ÀÁÂÃÄÅàáâãäåĀāĂăĄąÇçĆćĈĉĊċČčÐðĎďĐđÈÉÊËèéêëĒēĔĕĖėĘęĚěĜĝĞğĠġĢ‌​ģĤĥĦħÌÍÎÏìíîïĨĩĪīĬĭĮ‌​įİıĴĵĶķĸĹĺĻļĽľĿŀŁłÑñ‌​ŃńŅņŇňŉŊŋÒÓÔÕÖØòóôõö‌​øŌōŎŏŐőŔŕŖŗŘřŚśŜŝŞşŠ‌​šȘșſŢţŤťŦŧȚțÙÚÛÜùúûü‌​ŨũŪūŬŭŮůŰűŲųŴŵÝýÿŶŷŸ‌​ŹźŻżŽž", "AAAAAAaaaaaaAaAaAaCcCcCcCcCcDdDdDdEEEEeeeeEeEeEeEeEeGgGgGgG‌​gHhHhIIIIiiiiIiIiIiI‌​iIiJjKkkLlLlLlLlLlNn‌​NnNnNnnNnOOOOOOooooo‌​oOoOoOoRrRrRrSsSsSsS‌​sSssTtTtTtTtUUUUuuuu‌​UuUuUuUuUuUuWwYyyYyY‌​ZzZzZz")
    wiki_name = self.title.unicode_normalize(:nfkd).encode('ASCII', replace: '')
    self.wiki_name = wiki_name.strip.downcase.gsub(' ', '_')
  end
end
