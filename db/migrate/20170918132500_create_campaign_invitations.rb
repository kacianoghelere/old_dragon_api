class CreateCampaignInvitations < ActiveRecord::Migration
  def change
    create_table :campaign_invitations do |t|
      t.text    :message
      t.boolean :completed,             default: false, null: false
      t.boolean :accepted,              default: false, null: false
      t.boolean :denied,                default: false, null: false
      t.integer :campaign_id, limit: 8,                 null: false
      t.integer :user_id,     limit: 8,                 null: false

      t.timestamps null: false
    end

    add_index :campaign_invitations, [:campaign_id], using: :btree
    add_index :campaign_invitations, [:user_id], using: :btree
  end
end
