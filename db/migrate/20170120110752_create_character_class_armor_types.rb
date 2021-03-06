class CreateCharacterClassArmorTypes < ActiveRecord::Migration
  def change
create_table :character_class_armor_types, id: :bigint do |t|
      t.integer  :character_class_id, limit: 8, null: false
      t.integer  :armor_type_id,      limit: 8, null: false
      t.timestamps null: false
    end

    add_index :character_class_armor_types, [:armor_type_id], using: :btree
    add_index :character_class_armor_types, [:character_class_id], using: :btree
  end
end
