class CreateCharacterSheetExpertises < ActiveRecord::Migration
  def change
    create_table :character_sheet_expertises, id: false do |t|
      t.integer  :character_sheet_id, limit: 8, null: false
      t.integer  :expertise_id,       limit: 8, null: false
      t.timestamps null: false
    end

    add_index :character_sheet_expertises, [:character_sheet_id], using: :btree
    add_index :character_sheet_expertises, [:expertise_id], using: :btree
  end
end
