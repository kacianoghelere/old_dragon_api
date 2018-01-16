class CreateAttributeMods < ActiveRecord::Migration
  def change
    create_table :attribute_mods, id: :bigint do |t|
      t.integer :attribute_id,       limit: 8,              null: false
      t.integer :value,              limit: 4,              null: false
      t.integer :armor_class_mod,    limit: 4,  default: 0, null: false
      t.integer :climb_mod,          limit: 4,  default: 0, null: false
      t.integer :damage_mod,         limit: 4,  default: 0, null: false
      t.integer :followers_mod,      limit: 4,  default: 0, null: false
      t.integer :hitpoints_mod,      limit: 4,  default: 0, null: false
      t.integer :languages_mod,      limit: 4,  default: 0, null: false
      t.integer :learn_magic_mod,    limit: 4,  default: 0, null: false
      t.integer :lockpick_mod,       limit: 4,  default: 0, null: false
      t.integer :magic_circle_1_mod, limit: 4,  default: 0, null: false
      t.integer :magic_circle_2_mod, limit: 4,  default: 0, null: false
      t.integer :magic_circle_3_mod, limit: 4,  default: 0, null: false
      t.integer :magic_circle_4_mod, limit: 4,  default: 0, null: false
      t.integer :magic_circle_5_mod, limit: 4,  default: 0, null: false
      t.integer :magic_circle_6_mod, limit: 4,  default: 0, null: false
      t.integer :magic_circle_7_mod, limit: 4,  default: 0, null: false
      t.integer :magic_circle_8_mod, limit: 4,  default: 0, null: false
      t.integer :magic_circle_9_mod, limit: 4,  default: 0, null: false
      t.integer :melee_attack_mod,   limit: 4,  default: 0, null: false
      t.integer :perception_mod,     limit: 4,  default: 0, null: false
      t.integer :pickpocket_mod,     limit: 4,  default: 0, null: false
      t.integer :protection_mod,     limit: 4,  default: 0, null: false
      t.integer :ranged_attack_mod,  limit: 4,  default: 0, null: false
      t.integer :reaction_mod,       limit: 4,  default: 0, null: false
      t.integer :resurrection_mod,   limit: 4,  default: 0, null: false
      t.integer :sneak_attack_mod,   limit: 4,  default: 0, null: false
      t.integer :stealth_mod,        limit: 4,  default: 0, null: false
      t.integer :surprise_mod,       limit: 4,  default: 0, null: false
      t.integer :traps_mod,          limit: 4,  default: 0, null: false
      t.integer :turn_undead_mod,    limit: 10, default: 0, null: false
      t.timestamps null: false
    end
  end
end