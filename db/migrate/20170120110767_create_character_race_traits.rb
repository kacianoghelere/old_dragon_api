class CreateCharacterRaceTraits < ActiveRecord::Migration
  def change
    create_table :character_race_traits, id: :bigint do |t|
      t.integer  :character_race_id, limit: 8, null: false
      t.integer  :trait_id,           limit: 8, null: false
      t.timestamps null: false
    end

    add_index :character_race_traits, [:character_race_id], using: :btree
    add_index :character_race_traits, [:trait_id], using: :btree
  end
end
