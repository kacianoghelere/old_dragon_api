class CreateThiefTalents < ActiveRecord::Migration
  def change
    create_table :thief_talents, id: :bigint do |t|
      t.integer  :level,           limit: 4,                 null: false
      t.integer  :lockpick,        limit: 4,                 null: false
      t.integer  :find_traps,      limit: 4,                 null: false
      t.integer  :climb,           limit: 4,                 null: false
      t.integer  :silent_movement, limit: 4,                 null: false
      t.integer  :stealth,         limit: 4,                 null: false
      t.integer  :pickpocket,      limit: 4,                 null: false
      t.string   :hear_noises,     limit: 3, default: "1-1", null: false
      t.string   :backstab,        limit: 2, default: "x2",  null: false
      t.timestamps null: false
    end
  end
end
