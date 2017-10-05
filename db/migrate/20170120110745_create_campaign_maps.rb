class CreateCampaignMaps < ActiveRecord::Migration
  def change
    create_table :campaign_maps, id: :bigint do |t|
      t.text     :url,                                   null: false
      t.text     :description,                           null: false
      t.boolean  :active,                 default: true, null: false
      t.integer  :campaign_id,  limit: 8,                null: false
      t.timestamps null: false
    end

    add_index :campaign_maps, [:campaign_id], using: :btree
  end
end
