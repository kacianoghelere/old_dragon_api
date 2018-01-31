class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes, id: :bigint do |t|
      t.string :abbreviation, limit: 3,   null: false
      t.string :name,         limit: 20,  null: false
      t.string :description,  limit: 100, null: false
      t.timestamps null: false
    end
  end
end