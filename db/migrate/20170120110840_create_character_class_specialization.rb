class CreateCharacterClassSpecialization < ActiveRecord::Migration
  def change
    create_table :character_class_specializations, id: :bigint do |t|
      t.string   :name,               limit: 45
      t.integer  :alignment_id,       limit: 8,   null: false
      t.integer  :character_class_id, limit: 8,   null: false
      t.integer  :user_id,            limit: 8,   null: false
      t.timestamps null: false
    end

    add_index :character_class_specializations, [:alignment_id], using: :btree
    add_index :character_class_specializations, [:character_class_id], using: :btree
    add_index :character_class_specializations, [:user_id], using: :btree
  end
end
