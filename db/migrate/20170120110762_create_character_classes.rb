class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes, id: :bigint do |t|
      t.string   :name,                    limit: 45,  null: false
      t.string   :description,             limit: 500
      t.integer  :dice_id,                 limit: 8,   null: false
      t.integer  :perk_id,                 limit: 8
      t.integer  :character_class_type_id, limit: 8,   null: false
      t.integer  :user_id,                 limit: 8,   null: false
      t.timestamps null: false
    end

    add_index :character_classes, [:character_class_type_id], using: :btree
    add_index :character_classes, [:dice_id], using: :btree
    add_index :character_classes, [:perk_id], using: :btree
    add_index :character_classes, [:user_id], using: :btree
  end
end
