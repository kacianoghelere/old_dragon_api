class CharacterRacesSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :movement_base, :versatile_mod, :str_mod, :dex_mod, :cons_mod, :int_mod, :wis_mod, :char_mod
  attribute :short_description

  def short_description
    object.description.split('.').first unless object.description.empty?
  end
end
