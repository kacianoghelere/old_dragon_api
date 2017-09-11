class CreateCampaignJournals < ActiveRecord::Migration
  def change
    create_table :campaign_journals, id: :bigint do |t|
      t.string   :title,        limit: 45,                null: false
      t.text     :description,                            null: false
      t.boolean  :idactive,                default: true, null: false
      t.integer  :campaign_id,  limit: 8,                 null: false
      t.timestamps null: false
    end

    add_index :campaign_journals, [:campaign_id], using: :btree
  end
end
