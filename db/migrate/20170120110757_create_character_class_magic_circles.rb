class CreateCharacterClassMagicCircles < ActiveRecord::Migration
  def change
    create_table :character_class_magic_circles, id: :bigint do |t|
      t.integer  :level,              limit: 4, default: 1, null: false
      t.integer  :circle_1,           limit: 4, default: 0, null: false
      t.integer  :circle_2,           limit: 4, default: 0, null: false
      t.integer  :circle_3,           limit: 4, default: 0, null: false
      t.integer  :circle_4,           limit: 4, default: 0, null: false
      t.integer  :circle_5,           limit: 4, default: 0, null: false
      t.integer  :circle_6,           limit: 4, default: 0, null: false
      t.integer  :circle_7,           limit: 4, default: 0, null: false
      t.integer  :circle_8,           limit: 4, default: 0, null: false
      t.integer  :circle_9,           limit: 4, default: 0, null: false
      t.integer  :character_class_id, limit: 8,             null: false
      t.timestamps null: false
    end

    add_index :character_class_magic_circles, [:character_class_id], using: :btree
  end
end
