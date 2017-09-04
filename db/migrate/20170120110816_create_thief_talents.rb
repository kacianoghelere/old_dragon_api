class CreateThiefTalents < ActiveRecord::Migration
  def change
    create_table :thief_talents, id: :bigint do |t|
      t.integer  :level,              limit: 4,              null: false
      t.integer  :lockpick,           limit: 4,              null: false
      t.integer  :traps,              limit: 4,              null: false
      t.integer  :climb,              limit: 4,              null: false
      t.integer  :stealth,            limit: 4,              null: false
      t.integer  :pickpocket,         limit: 4,              null: false
      t.integer  :perception,         limit: 4,              null: false
      t.integer  :sneak_attack,       limit: 4,              null: false
      t.integer  :character_class_id, limit: 8,              null: false
      t.timestamps null: false
    end

    add_index :thief_talents, [:character_class_id], using: :btree
  end
end
