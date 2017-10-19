class CreateCharacterRaces < ActiveRecord::Migration
  def change
    create_table :character_races, id: :bigint do |t|
      t.string   :name,              limit: 45,                                null: false
      t.string   :flat_name,         limit: 45,                                null: false
      t.string   :singular_name,     limit: 45,                                null: false
      t.text     :description
      t.string   :picture,           limit: 300
      t.string   :example_picture,   limit: 300
      t.decimal  :min_height,                   precision: 10, default: 0
      t.decimal  :max_height,                   precision: 10, default: 0
      t.decimal  :min_weight,                   precision: 10
      t.decimal  :max_weight,                   precision: 10
      t.integer  :maturity,          limit: 4
      t.integer  :max_age,           limit: 4
      t.integer  :movement_base,     limit: 4,                 default: 1,     null: false
      t.boolean  :versatile_mod,                               default: false, null: false
      t.integer  :str_mod,           limit: 4,                 default: 0,     null: false
      t.integer  :dex_mod,           limit: 4,                 default: 0,     null: false
      t.integer  :cons_mod,          limit: 4,                 default: 0,     null: false
      t.integer  :int_mod,           limit: 4,                 default: 0,     null: false
      t.integer  :wis_mod,           limit: 4,                 default: 0,     null: false
      t.integer  :char_mod,          limit: 4,                 default: 0,     null: false
      t.integer  :alignment_id,      limit: 8,                                 null: false
      t.integer  :dice_id,           limit: 8
      t.integer  :user_id,           limit: 8,                                 null: false
      t.timestamps null: false
    end

    add_index :character_races, [:alignment_id], using: :btree
    add_index :character_races, [:dice_id], using: :btree
    add_index :character_races, [:user_id], using: :btree
  end
end
