class CreateDexterityMods < ActiveRecord::Migration
  def change
    create_table :dexterity_mods, id: :bigint do |t|
      t.integer  :value,               limit: 4,             null: false
      t.integer  :attack_mod,          limit: 4, default: 0, null: false
      t.integer  :surprise_mod,        limit: 4, default: 0, null: false
      t.integer  :armor_class_mod,     limit: 4, default: 0, null: false
      t.integer  :protection_mod,      limit: 4, default: 0, null: false
      t.integer  :lockpick,            limit: 4
      t.integer  :traps,               limit: 4
      t.integer  :climb,               limit: 4
      t.integer  :stealth,             limit: 4
      t.integer  :pickpocket,          limit: 4
      t.integer  :perception,          limit: 4
      t.integer  :sneak_attack,        limit: 4
      t.timestamps null: false
    end
  end
end
