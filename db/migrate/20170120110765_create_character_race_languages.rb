class CreateCharacterRaceLanguages < ActiveRecord::Migration
  def change
    create_table :character_race_languages, id: :bigint do |t|
      t.integer  :character_race_id, limit: 8, null: false
      t.integer  :language_type_id,  limit: 8, null: false
      t.timestamps null: false
    end

    add_index :character_race_languages, [:character_race_id], using: :btree
    add_index :character_race_languages, [:language_type_id], using: :btree
  end
end
