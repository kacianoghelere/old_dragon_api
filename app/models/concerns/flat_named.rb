module FlatNamed
  extend ActiveSupport::Concern

  included do
    before_save :generate_flat_name, only: [:create, :update]
  end

  def generate_flat_name
    if self.attributes['title']
      self.flat_name = generate_api_name(self.title)
    else
      self.flat_name = generate_api_name(self.name)
    end
  end

  private

    def generate_api_name(name)
      api_name = name.unicode_normalize(:nfkd).encode('ASCII', replace: '')
      api_name = api_name.strip.downcase
      api_name = api_name.strip.gsub(/([\,\.\(\)\[\]])/, ' ')
      api_name = api_name.strip.gsub(' ', '_')
      api_name
    end
end