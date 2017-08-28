class CreateCampaignJournals < ActiveRecord::Migration
  def change
    create_table :campaign_journals, id: :bigint do |t|
      t.string   :description, limit: 45
      t.boolean  :idactive,               default: true, null: false
      t.datetime :log_date,                              null: false
      t.integer  :campaign_id,  limit: 8,                 null: false
      t.timestamps null: false
    end

    add_index :campaign_journals, [:campaign_id], using: :btree
  end
end
