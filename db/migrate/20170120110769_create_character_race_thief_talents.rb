class CreateCharacterRaceThiefTalents < ActiveRecord::Migration
  def change
    create_table :character_race_thief_talents, id: :bigint do |t|
      t.integer  :lockpick,          limit: 4
      t.integer  :traps,             limit: 4
      t.integer  :climb,             limit: 4
      t.integer  :stealth,           limit: 4
      t.integer  :pickpocket,        limit: 4
      t.integer  :perception,        limit: 4
      t.integer  :sneak_attack,      limit: 4
      t.integer  :character_race_id, limit: 8,   null: false
      t.timestamps null: false
    end

    add_index :character_race_thief_talents, [:character_race_id], using: :btree
  end
end
