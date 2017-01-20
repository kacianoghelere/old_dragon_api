class CreateConstitutionMods < ActiveRecord::Migration
  def change
    create_table :constitution_mods, id: :bigint do |t|
      t.integer  :value,            limit: 4,             null: false
      t.integer  :hitpoints_mod,    limit: 4, default: 0, null: false
      t.integer  :protection_mod,   limit: 4, default: 0, null: false
      t.integer  :resurrection_mod, limit: 4, default: 0, null: false
      t.timestamps null: false
    end
  end
end
