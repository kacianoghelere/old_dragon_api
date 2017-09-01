class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :bigint do |t|
      t.string   :name,            limit: 45, null: false
      t.string   :user_code,       limit: 45, null: false
      t.string   :password_digest
      t.datetime :last_login
      t.string   :email,           limit: 64
      t.integer  :role_id,         limit: 8,  null: false
      t.timestamps                            null: false
    end

    add_index :users, [:role_id], using: :btree
    add_index :users, :user_code, unique: true
    add_index :users, :email, unique: true
  end
end
