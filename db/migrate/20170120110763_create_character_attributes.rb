class CreateCharacterAttributes < ActiveRecord::Migration
  def change
    create_table :character_attributes, id: :bigint do |t|
      t.integer  :attribute_modifier_id, limit: 8, default: 0,    null: false
      t.integer  :character_id,          limit: 8,                null: false
      t.timestamps null: false
    end

    add_index :character_attributes, [:attribute_modifier_id],     using: :btree
    add_index :character_attributes, [:character_id],    using: :btree
  end
end
