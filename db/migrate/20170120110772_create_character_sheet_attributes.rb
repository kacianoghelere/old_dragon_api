class CreateCharacterSheetAttributes < ActiveRecord::Migration
  def change
    create_table :character_sheet_attributes, primary_key: :character_sheet_id, id: :integer, limit: 8 do |t|
      t.integer  :strength,     limit: 4, default: 0, null: false
      t.integer  :dexterity,    limit: 4, default: 0, null: false
      t.integer  :constitution, limit: 4, default: 0, null: false
      t.integer  :intelligence, limit: 4, default: 0, null: false
      t.integer  :wisdom,       limit: 4, default: 0, null: false
      t.integer  :charisma,     limit: 4, default: 0, null: false
      t.timestamps null: false
    end
  end
end
