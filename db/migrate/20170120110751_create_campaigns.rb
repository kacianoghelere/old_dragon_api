class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns, id: :bigint do |t|
      t.string   :title,           limit: 45,    null: false
      t.string   :uuid,            limit: 11,    null: false
      t.string   :picture,         limit: 300
      t.text     :description,     limit: 65535
      t.datetime :start_date,                    null: false
      t.datetime :conclusion_date
      t.integer  :user_id,         limit: 8,     null: false
      t.timestamps null: false
    end
    add_index :campaigns, [:user_id], using: :btree
    add_index :campaigns, [:uuid],    using: :btree
  end
end
