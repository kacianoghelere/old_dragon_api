class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells, id: :bigint do |t|
      t.string   :name,            limit: 45,  null: false
      t.string   :range,           limit: 45,  null: false
      t.string   :duration,        limit: 45,  null: false
      t.string   :description,     limit: 500, null: false
      t.integer  :effect_id,       limit: 8,   null: false
      t.integer  :element_type_id, limit: 8,   null: false
      t.integer  :spell_circle_id, limit: 8,   null: false
      t.integer  :user_id,         limit: 8,   null: false
      t.timestamps null: false
    end

    add_index :spells, [:effect_id], using: :btree
    add_index :spells, [:element_type_id], using: :btree
    add_index :spells, [:spell_circle_id], using: :btree
    add_index :spells, [:user_id], using: :btree
  end
end
