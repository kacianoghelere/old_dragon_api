class CreateCampaignMembers < ActiveRecord::Migration
  def change
    create_table :campaign_members, id: :bigint do |t|
      t.integer  :campaign_id,  limit: 8,                null: false
      t.integer  :character_id, limit: 8,                null: false
      t.boolean  :active,                 default: true, null: false
      t.timestamps null: false
    end

    add_index :campaign_members, [:campaign_id], using: :btree
    add_index :campaign_members, [:character_id], using: :btree
  end
end
