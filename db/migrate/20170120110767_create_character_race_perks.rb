class CreateCharacterRacePerks < ActiveRecord::Migration
  def change
    create_table :character_race_perks, id: :bigint do |t|
      t.integer  :character_race_id, limit: 8, null: false
      t.integer  :perk_id,           limit: 8, null: false
      t.timestamps null: false
    end

    add_index :character_race_perks, [:character_race_id], using: :btree
    add_index :character_race_perks, [:perk_id], using: :btree
  end
end
