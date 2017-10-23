class CreateTraits < ActiveRecord::Migration
  def change
    create_table :traits, id: :bigint do |t|
      t.string     :name,                limit: 45
      t.string     :description,         limit: 500
      t.integer    :movement_bonus,      limit: 4,   default: 0
      t.integer    :armor_class_bonus,   limit: 4,   default: 0
      t.integer    :armor_type_id,       limit: 8
      t.integer    :damage_bonus,        limit: 4,   default: 0
      t.integer    :weapon_type_id,      limit: 8
      t.integer    :meele_attack_bonus,  limit: 4,   default: 0
      t.integer    :ranged_attack_bonus, limit: 4,   default: 0
      t.integer    :lockpick,            limit: 4,   default: 0
      t.integer    :traps,               limit: 4,   default: 0
      t.integer    :climb,               limit: 4,   default: 0
      t.integer    :stealth,             limit: 4,   default: 0
      t.integer    :pickpocket,          limit: 4,   default: 0
      t.integer    :perception,          limit: 4,   default: 0
      t.integer    :sneak_attack,        limit: 4,   default: 0
      t.integer    :trait_type_id,       limit: 8,              null: false
      t.integer    :user_id,             limit: 8,              null: false
      t.timestamps                                              null: false
    end

    add_index :traits, [:armor_type_id], using: :btree
    add_index :traits, [:trait_type_id], using: :btree
    add_index :traits, [:user_id], using: :btree
    add_index :traits, [:weapon_type_id], using: :btree
  end
end
