class CreateCharacterRaceSkills < ActiveRecord::Migration
  def change
    create_table :character_race_skills, id: :bigint do |t|
      t.integer  :character_race_id, limit: 8, null: false
      t.integer  :skill_id,          limit: 8, null: false
      t.timestamps null: false
    end

    add_index :character_race_skills, [:character_race_id], using: :btree
    add_index :character_race_skills, [:skill_id], using: :btree
  end
end
