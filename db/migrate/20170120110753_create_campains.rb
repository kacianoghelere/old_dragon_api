class CreateCampains < ActiveRecord::Migration
  def change
    create_table :campains, id: :integer, limit: 8 do |t|
      t.string   :title,           limit: 45,    null: false
      t.text     :description,     limit: 65535
      t.datetime :start_date,                    null: false
      t.datetime :conclusion_date
      t.integer  :user_id,         limit: 8,     null: false
      t.timestamps null: false
    end

    add_index :campains, [:user_id], using: :btree
  end
end
