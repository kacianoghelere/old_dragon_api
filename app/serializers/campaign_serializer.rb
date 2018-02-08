class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :uuid, :title, :picture, :description, :start_date, :conclusion_date
  belongs_to :user, serializer: UserSimpleSerializer, key: :dungeonMaster

  def picture
    if !object.picture
      'https://fakeimg.pl/1280x720'
    else
      object.picture
    end
  end
end
