class CreateArmorTypes < ActiveRecord::Migration
  def change
    create_table :armor_types, id: :bigint do |t|
      t.string   :name,       limit: 45, null: false
      t.timestamps null: false
    end
  end
end
