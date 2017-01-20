class CreateItems < ActiveRecord::Migration
  def change
    create_table :items, id: :bigint do |t|
      t.string   :name,         limit: 45,                 null: false
      t.string   :description,  limit: 500
      t.decimal  :weight,                   precision: 10
      t.integer  :price,        limit: 4
      t.integer  :item_type_id, limit: 8,                  null: false
      t.integer  :user_id,      limit: 8,                  null: false
      t.timestamps null: false
    end

    add_index :items, [:item_type_id], using: :btree
    add_index :items, [:user_id], using: :btree
  end
end
