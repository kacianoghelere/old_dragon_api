class CreateCharacterClassTypes < ActiveRecord::Migration
  def change
    create_table :character_class_types, id: :bigint do |t|
      t.string   :name,              limit: 45,                 null: false
      t.boolean  :magic,                        default: false, null: false
      t.integer  :protection,        limit: 4,                  null: false
      t.string   :key_attr,          limit: 4,  default: false, null: false
      t.boolean  :can_bane_undead,              default: false, null: false
      t.boolean  :has_thief_talents,            default: false, null: false
      t.timestamps null: false
    end
  end
end
