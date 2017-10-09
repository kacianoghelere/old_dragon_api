module Core
  extend ActiveSupport::Concern

  def generate_api_name(name)
    api_name = name.unicode_normalize(:nfkd).encode('ASCII', replace: '')
    api_name = api_name.strip.downcase
    api_name = api_name.strip.gsub('\,', ' ')
    api_name = api_name.strip.gsub('\.', ' ')
    api_name = api_name.strip.gsub(' ', '_')
    api_name
  end
end