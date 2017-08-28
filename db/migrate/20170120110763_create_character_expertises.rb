class CreateCharacterExpertises < ActiveRecord::Migration
  def change
    create_table :character_expertises, id: :bigint do |t|
      t.integer  :character_id, limit: 8, null: false
      t.integer  :expertise_id,       limit: 8, null: false
      t.timestamps null: false
    end

    add_index :character_expertises, [:character_id], using: :btree
    add_index :character_expertises, [:expertise_id], using: :btree
  end
end
