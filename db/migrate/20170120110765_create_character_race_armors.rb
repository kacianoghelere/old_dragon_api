class CreateCharacterRaceArmors < ActiveRecord::Migration
  def change
    create_table :character_race_armors, id: false do |t|
      t.integer  :armor_type_id,     limit: 8, null: false
      t.integer  :character_race_id, limit: 8, null: false
      t.timestamps null: false
    end

    add_index :character_race_armors, [:armor_type_id], using: :btree
    add_index :character_race_armors, [:character_race_id], using: :btree
  end
end
