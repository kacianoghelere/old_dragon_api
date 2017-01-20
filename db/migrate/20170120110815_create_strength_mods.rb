class CreateStrengthMods < ActiveRecord::Migration
  def change
    create_table :strength_mods, id: :bigint do |t|
      t.integer  :value,      limit: 4,             null: false
      t.integer  :attack_mod, limit: 4, default: 0, null: false
      t.integer  :damage_mod, limit: 4, default: 0, null: false
      t.timestamps null: false
    end
  end
end
