class CreateCharacterAttributes < ActiveRecord::Migration
  def change
    create_table :character_attributes, id: :bigint do |t|
      t.integer  :strength_id,     limit: 8, default: 0,    null: false
      t.integer  :dexterity_id,    limit: 8, default: 0,    null: false
      t.integer  :constitution_id, limit: 8, default: 0,    null: false
      t.integer  :intelligence_id, limit: 8, default: 0,    null: false
      t.integer  :wisdom_id,       limit: 8, default: 0,    null: false
      t.integer  :charisma_id,     limit: 8, default: 0,    null: false
      t.integer  :character_id,    limit: 8,                null: false
      t.timestamps null: false
    end

    add_index :character_attributes, [:strength_id],     using: :btree
    add_index :character_attributes, [:dexterity_id],    using: :btree
    add_index :character_attributes, [:constitution_id], using: :btree
    add_index :character_attributes, [:intelligence_id], using: :btree
    add_index :character_attributes, [:wisdom_id],       using: :btree
    add_index :character_attributes, [:charisma_id],     using: :btree
    add_index :character_attributes, [:character_id],    using: :btree
  end
end
