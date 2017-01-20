class CreateCampainJournals < ActiveRecord::Migration
  def change
    create_table :campain_journals, id: :integer, limit: 8 do |t|
      t.string   :description, limit: 45
      t.boolean  :idactive,               default: true, null: false
      t.datetime :log_date,                              null: false
      t.integer  :campain_id,  limit: 8,                 null: false
      t.timestamps null: false
    end

    add_index :campain_journals, [:campain_id], using: :btree
  end
end
