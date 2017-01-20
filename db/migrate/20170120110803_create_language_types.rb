class CreateLanguageTypes < ActiveRecord::Migration
  def change
    create_table :language_types, id: :bigint do |t|
      t.string   :name,        limit: 45,    null: false
      t.text     :description, limit: 65535
      t.timestamps null: false
    end
  end
end
