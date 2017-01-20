class CreateCampainMembers < ActiveRecord::Migration
  def change
    create_table :campain_members, id: :bigint do |t|
      t.integer  :campain_id,         limit: 8,                null: false
      t.integer  :character_sheet_id, limit: 8,                null: false
      t.boolean  :idactive,                     default: true, null: false
      t.timestamps null: false
    end

    add_index :campain_members, [:campain_id], using: :btree
    add_index :campain_members, [:character_sheet_id], using: :btree
  end
end
