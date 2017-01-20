class CreateDexterityMods < ActiveRecord::Migration
  def change
    create_table :dexterity_mods, id: :bigint do |t|
      t.integer  :value,               limit: 4,             null: false
      t.integer  :attack_mod,          limit: 4, default: 0, null: false
      t.integer  :surprise_mod,        limit: 4, default: 0, null: false
      t.integer  :armor_class_mod,     limit: 4, default: 0, null: false
      t.integer  :protection_mod,      limit: 4, default: 0, null: false
      t.integer  :find_traps_mod,      limit: 4, default: 0, null: false
      t.integer  :silent_movement_mod, limit: 4, default: 0, null: false
      t.integer  :lockpick_mod,        limit: 4, default: 0, null: false
      t.integer  :stealth_mod,         limit: 4, default: 0, null: false
      t.integer  :pickpocket_mod,      limit: 4, default: 0, null: false
      t.timestamps null: false
    end
  end
end
