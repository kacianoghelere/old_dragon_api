class CreateCampaignPages < ActiveRecord::Migration
  def change
    create_table :campaign_pages, id: :bigint do |t|
      t.string  :title,            limit: 45,                   null: false
      t.string  :flat_name,        limit: 100,                  null: false
      t.text    :body,             limit: 65535
      t.string  :picture,          limit: 300
      t.boolean :dm_only,                       default: false, null: false
      t.integer :campaign_id,      limit: 8,                    null: false
      t.integer :page_category_id, limit: 8

      t.timestamps null: false
    end
    add_index :campaign_pages, [:campaign_id], using: :btree
    add_index :campaign_pages, [:page_category_id], using: :btree
    add_index :campaign_pages, [:flat_name], using: :btree, unique: true
  end
end
