class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters, id: :bigint do |t|
      t.string   :name,               limit: 45
      t.string   :picture,            limit: 300
      t.decimal  :weight,                           precision: 10
      t.decimal  :height,                           precision: 10
      t.integer  :age,                limit: 4
      t.text     :description,        limit: 65535
      t.integer  :character_class_id, limit: 8,                    null: false
      t.integer  :character_race_id,  limit: 8,                    null: false
      t.integer  :user_id,            limit: 8,                    null: false
      t.timestamps null: false
    end

    add_index :characters, [:character_class_id], using: :btree
    add_index :characters, [:character_race_id], using: :btree
    add_index :characters, [:user_id], using: :btree
  end
end
