class CreateCharacterSpecializations < ActiveRecord::Migration
  def change
    create_table :character_specializations, id: :bigint do |t|
      t.string   :name,               limit: 45,              null: false
      t.string   :flat_name,          limit: 45,              null: false
      t.string   :picture,            limit: 300
      t.text     :description,                                null: false
      t.integer  :min_level,          limit: 4,   default: 1, null: false
      t.integer  :alignment_id,       limit: 8
      t.integer  :character_class_id, limit: 8,               null: false
      t.integer  :user_id,            limit: 8,               null: false
      t.timestamps                                            null: false
    end

    add_index :character_specializations, [:character_class_id], using: :btree
    add_index :character_specializations, [:alignment_id], using: :btree
  end
end
