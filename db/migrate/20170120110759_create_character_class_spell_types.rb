class CreateCharacterClassSpellTypes < ActiveRecord::Migration
  def change
    create_table :character_class_spell_types, id: false do |t|
      t.integer  :character_class_id, limit: 8, null: false
      t.integer  :spell_type_id,      limit: 8, null: false
      t.timestamps null: false
    end

    add_index :character_class_spell_types, [:character_class_id], using: :btree
    add_index :character_class_spell_types, [:spell_type_id], using: :btree
  end
end
