class CreateMaterialTypes < ActiveRecord::Migration
  def change
    create_table :material_types, id: :bigint do |t|
      t.string   :name,       limit: 45
      t.timestamps null: false
    end
  end
end
