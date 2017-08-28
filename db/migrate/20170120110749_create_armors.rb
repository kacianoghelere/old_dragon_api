class CreateArmors < ActiveRecord::Migration
  def change
    create_table :armors, id: :bigint do |t|
      t.string   :name,               limit: 45,                             null: false
      t.string   :description,        limit: 500
      t.integer  :armor_class,        limit: 4,                  default: 0, null: false
      t.integer  :movement_reduction, limit: 4,                  default: 0
      t.decimal  :price,                          precision: 10, default: 0, null: false
      t.integer  :alignment_id,       limit: 8,                              null: false
      t.integer  :armor_type_id,      limit: 8,                              null: false
      t.integer  :origin_id,          limit: 8,                              null: false
      t.integer  :user_id,            limit: 8,                              null: false
      t.timestamps null: false
    end

    add_index :armors, [:alignment_id], using: :btree
    add_index :armors, [:armor_type_id], using: :btree
    add_index :armors, [:origin_id], using: :btree
    add_index :armors, [:user_id], using: :btree
  end
end
