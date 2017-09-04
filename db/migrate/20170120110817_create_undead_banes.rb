class CreateUndeadBanes < ActiveRecord::Migration
  def change
    create_table :undead_banes, id: :bigint do |t|
      t.integer  :level,              limit: 4,     default: 1,    null: false
      t.string   :dv1,                limit: 2,                    null: false
      t.string   :dv2,                limit: 2,                    null: false
      t.string   :dv3,                limit: 2,                    null: false
      t.string   :dv4,                limit: 2,                    null: false
      t.string   :dv5,                limit: 2,                    null: false
      t.string   :dv6,                limit: 2,                    null: false
      t.string   :dv7,                limit: 2,                    null: false
      t.string   :dv8,                limit: 2,                    null: false
      t.string   :dv9,                limit: 2,                    null: false
      t.string   :dv10,               limit: 2,                    null: false
      t.string   :dv11,               limit: 2,                    null: false
      t.string   :dv12,               limit: 2,                    null: false
      t.string   :dv13,               limit: 2,                    null: false
      t.string   :dv14,               limit: 2,                    null: false
      t.string   :dv15,               limit: 2,                    null: false
      t.string   :dv16,               limit: 2,                    null: false
      t.string   :dv17,               limit: 2,                    null: false
      t.string   :dv18,               limit: 2,                    null: false
      t.integer  :character_class_id, limit: 8,                    null: false
      t.timestamps null: false
    end

    add_index :undead_banes, [:character_class_id], using: :btree
  end
end
