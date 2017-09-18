class CreateCharacterClassRequirements < ActiveRecord::Migration
  def change
    create_table :character_class_requirements, id: :bigint do |t|
      t.integer  :str_mod,            limit: 4, default: 0, null: false
      t.integer  :dex_mod,            limit: 4, default: 0, null: false
      t.integer  :cons_mod,           limit: 4, default: 0, null: false
      t.integer  :int_mod,            limit: 4, default: 0, null: false
      t.integer  :wis_mod,            limit: 4, default: 0, null: false
      t.integer  :char_mod,           limit: 4, default: 0, null: false
      t.integer  :character_class_id, limit: 8,             null: false
      t.timestamps null: false
    end

    add_index :character_class_requirements, [:character_class_id], using: :btree
    add_index :character_class_requirements, :character_class_id, unique: true, name: "index_character_class_requirements_on_character_class_id_uk"
  end
end
