class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :title, :picture, :description, :start_date, :conclusion_date
  has_many :journals
  has_many :notes
  has_many :maps
  # has_many :users, serializer: UserSimpleSerializer, key: :members
  has_many :characters, serializer: CharacterSimpleSerializer
  belongs_to :user, serializer: UserSimpleSerializer, key: :dungeonMaster

  def picture
    if !object.picture
      'https://fakeimg.pl/1280x720'
    else
      object.picture
    end
  end
end
