class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons, id: :bigint do |t|
      t.string   :name,             limit: 45,                                 null: false
      t.string   :description,      limit: 500
      t.integer  :initiative,       limit: 4,                  default: 0,     null: false
      t.boolean  :ranged,                                      default: false, null: false
      t.integer  :range,            limit: 4,                  default: 0,     null: false
      t.string   :damage,           limit: 45,                                 null: false
      t.decimal  :weight,                       precision: 10,                 null: false
      t.decimal  :price,                        precision: 10,                 null: false
      t.integer  :alignment_id,     limit: 8,                                  null: false
      t.integer  :dice_id,          limit: 8,                                  null: false
      t.integer  :material_type_id, limit: 8,                                  null: false
      t.integer  :origin_id,        limit: 8,                                  null: false
      t.integer  :user_id,          limit: 8,                                  null: false
      t.integer  :weapon_type_id,   limit: 8,                                  null: false
      t.timestamps null: false
    end

    add_index :weapons, [:alignment_id], using: :btree
    add_index :weapons, [:dice_id], using: :btree
    add_index :weapons, [:material_type_id], using: :btree
    add_index :weapons, [:origin_id], using: :btree
    add_index :weapons, [:user_id], using: :btree
    add_index :weapons, [:weapon_type_id], using: :btree
  end
end
