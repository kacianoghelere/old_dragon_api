class CreateCharacterRaceWeapons < ActiveRecord::Migration
  def change
    create_table :character_race_weapons, id: false do |t|
      t.integer  :character_race_id, limit: 8, null: false
      t.integer  :weapon_type_id,    limit: 8, null: false
      t.timestamps null: false
    end

    add_index :character_race_weapons, [:character_race_id], using: :btree
    add_index :character_race_weapons, [:weapon_type_id], using: :btree
  end
end
