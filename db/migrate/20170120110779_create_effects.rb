class CreateEffects < ActiveRecord::Migration
  def change
    create_table :effects, id: :bigint do |t|
      t.string   :name,           limit: 45
      t.string   :description,    limit: 500
      t.integer  :effect_type_id, limit: 8,   null: false
      t.integer  :user_id,        limit: 8,   null: false
      t.timestamps null: false
    end

    add_index :effects, [:effect_type_id], using: :btree
    add_index :effects, [:user_id], using: :btree
  end
end
