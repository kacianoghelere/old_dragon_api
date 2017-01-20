class CreateCharacterClassEvolutions < ActiveRecord::Migration
  def change
create_table :character_class_evolutions, id: :bigint do |t|
      t.integer  :level,              limit: 4, default: 1, null: false
      t.integer  :exp,                limit: 8,             null: false
      t.integer  :life_amount,        limit: 4,             null: false
      t.boolean  :plus_life,                                null: false
      t.integer  :attack_base,        limit: 4,             null: false
      t.integer  :attack_base2,       limit: 4, default: 0, null: false
      t.integer  :protection_mod,     limit: 4,             null: false
      t.integer  :character_class_id, limit: 8,             null: false
      t.timestamps null: false
    end

    add_index :character_class_evolutions, [:character_class_id], using: :btree
  end
end
