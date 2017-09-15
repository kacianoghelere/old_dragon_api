class CreateCampaignNotes < ActiveRecord::Migration
  def change
    create_table :campaign_notes, id: :bigint do |t|
      t.string   :description, limit: 300
      t.boolean  :dm_only,                      default: false, null: false
      t.boolean  :idactive,                     default: true,  null: false
      t.integer  :campaign_id,        limit: 8,                 null: false
      t.timestamps null: false
    end

    add_index :campaign_notes, [:campaign_id], using: :btree
  end
end
