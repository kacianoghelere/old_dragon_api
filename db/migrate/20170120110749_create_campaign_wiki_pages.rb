class CreateCampaignWikiPages < ActiveRecord::Migration
  def change
    create_table :campaign_wiki_pages, id: :bigint do |t|
      t.string :title
      t.text :body
      t.integer :campaign_id, limit: 8,          null: false

      t.timestamps null: false
    end
    add_index :campaign_wiki_pages, [:campaign_id], using: :btree
  end
end
