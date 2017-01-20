class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles, id: :bigint do |t|
      t.string   :name,       limit: 45,                 null: false
      t.boolean  :admin,                 default: false, null: false
      t.timestamps null: false
    end
  end
end
