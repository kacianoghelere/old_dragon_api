class CreateWikiCategories < ActiveRecord::Migration
  def change
    create_table :wiki_categories, id: :bigint do |t|
      t.string  :title,     limit: 45,    null: false
      t.string  :wiki_name, limit: 100,   null: false

      t.timestamps null: false
    end
    add_index :wiki_categories, [:wiki_name], using: :btree
  end
end
