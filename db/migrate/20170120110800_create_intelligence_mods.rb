class CreateIntelligenceMods < ActiveRecord::Migration
  def change
    create_table :intelligence_mods, id: :bigint do |t|
      t.integer  :value,              limit: 4,             null: false
      t.integer  :languages_mod,      limit: 4, default: 0, null: false
      t.integer  :learn_magic_mod,    limit: 4, default: 0, null: false
      t.integer  :magic_circle_1_mod, limit: 4, default: 0, null: false
      t.integer  :magic_circle_2_mod, limit: 4, default: 0, null: false
      t.integer  :magic_circle_3_mod, limit: 4, default: 0, null: false
      t.integer  :magic_circle_4_mod, limit: 4, default: 0, null: false
      t.integer  :magic_circle_5_mod, limit: 4, default: 0, null: false
      t.integer  :magic_circle_6_mod, limit: 4, default: 0, null: false
      t.integer  :magic_circle_7_mod, limit: 4, default: 0, null: false
      t.integer  :magic_circle_8_mod, limit: 4, default: 0, null: false
      t.integer  :magic_circle_9_mod, limit: 4, default: 0, null: false
      t.timestamps null: false
    end
  end
end
