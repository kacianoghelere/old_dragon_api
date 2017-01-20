class CreateCharacterRaceThiefTalents < ActiveRecord::Migration
  def change
    create_table :character_race_thief_talents, id: :bigint do |t|
      t.integer  :lockpick_mod,        limit: 4,                 null: false
      t.integer  :find_traps_mod,      limit: 4,                 null: false
      t.integer  :climb_mod,           limit: 4,                 null: false
      t.integer  :silent_movement_mod, limit: 4,                 null: false
      t.integer  :stealth_mod,         limit: 4,                 null: false
      t.integer  :pickpocket_mod,      limit: 4,                 null: false
      t.string   :hear_noises_mod,     limit: 3, default: "1-1", null: false
      t.string   :backstab_mod,        limit: 2, default: "x2",  null: false
      t.integer  :character_race_id,   limit: 8,                 null: false
      t.timestamps null: false
    end

    add_index :character_race_thief_talents, [:character_race_id], using: :btree
  end
end
