class CreateSpellCircles < ActiveRecord::Migration
  def change
    create_table :spell_circles, id: :bigint do |t|
      t.integer  :circle,        limit: 4, default: 0, null: false
      t.integer  :spell_type_id, limit: 8,             null: false
      t.timestamps null: false
    end

    add_index :spell_circles, [:spell_type_id], using: :btree
  end
end
