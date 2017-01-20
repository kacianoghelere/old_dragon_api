class CreateCharismaMods < ActiveRecord::Migration
  def change
    create_table :charisma_mods, id: :bigint do |t|
      t.integer  :value,         limit: 4,                null: false
      t.integer  :followers_mod, limit: 4,  default: 0,   null: false
      t.integer  :reaction_mod,  limit: 4,  default: 0,   null: false
      t.string   :undead_mod,    limit: 10, default: :0, null: false
      t.timestamps null: false
    end
  end
end
