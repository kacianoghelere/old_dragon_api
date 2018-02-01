class CreatePageCategories < ActiveRecord::Migration
  def change
    create_table :page_categories, id: :bigint do |t|
      t.string  :title,     limit: 45,    null: false
      t.string  :flat_name, limit: 100,   null: false

      t.timestamps null: false
    end
    add_index :page_categories, [:flat_name], using: :btree, unique: true
  end
end
