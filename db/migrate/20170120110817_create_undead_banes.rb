class CreateUndeadBanes < ActiveRecord::Migration
  def change
    create_table :undead_banes, id: :bigint do |t|
      t.integer  :level,         limit: 4, default: 1,   null: false
      t.string   :skelleton_mod, limit: 2, default: :N, null: false
      t.string   :zombie_mod,    limit: 2, default: :N, null: false
      t.string   :ghoul_mod,     limit: 2, default: :N, null: false
      t.string   :inhuman_mod,   limit: 2, default: :N, null: false
      t.string   :aparition_mod, limit: 2, default: :N, null: false
      t.string   :mummy_mod,     limit: 2, default: :N, null: false
      t.string   :specter_mod,   limit: 2, default: :N, null: false
      t.string   :vampire_mod,   limit: 2, default: :N, null: false
      t.timestamps null: false
    end
  end
end
