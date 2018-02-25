class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes, id: :bigint do |t|
      t.string   :name,                    limit: 45,  null: false
      t.string   :flat_name,               limit: 45,  null: false
      t.string   :style,                   limit: 45,  null: false
      t.string   :picture,                 limit: 300
      t.string   :example_picture_1,       limit: 300
      t.string   :example_picture_2,       limit: 300
      t.string   :example_picture_3,       limit: 300
      t.text     :description
      t.integer  :dice_id,                 limit: 8,   null: false
      t.integer  :character_class_type_id, limit: 8,   null: false
      t.integer  :user_id,                 limit: 8,   null: false
      t.timestamps null: false
    end

    add_index :character_classes, [:character_class_type_id], using: :btree
    add_index :character_classes, [:dice_id], using: :btree
    add_index :character_classes, [:user_id], using: :btree
  end
end
