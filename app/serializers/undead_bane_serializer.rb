class UndeadBaneSerializer < ActiveModel::Serializer
  attributes :id, :level, :skelleton_mod, :zombie_mod, :ghoul_mod, :inhuman_mod, :aparition_mod, :mummy_mod, :specter_mod, :vampire_mod
end
