class CreateWeaponSizes < ActiveRecord::Migration
  def change
    create_table :weapon_sizes, id: :bigint do |t|
      t.string   :name,             limit: 100, null: false
      t.string   :alternative_name, limit: 100, null: false
      t.string   :alias,            limit: 1,   null: false
      t.timestamps null: false
    end
  end
end
