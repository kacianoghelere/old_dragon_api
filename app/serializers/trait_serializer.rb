class TraitSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :armor_class_bonus, :meele_attack_bonus, :ranged_attack_bonus, :lockpick, :traps, :climb, :stealth, :pickpocket, :perception, :sneak_attack

  has_one :trait_type
  has_one :user
end
