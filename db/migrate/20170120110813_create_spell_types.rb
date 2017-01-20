class CreateSpellTypes < ActiveRecord::Migration
  def change
    create_table :spell_types, id: :bigint do |t|
      t.string   :name,       limit: 45, null: false
      t.timestamps null: false
    end
  end
end
