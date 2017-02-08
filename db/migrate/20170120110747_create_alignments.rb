class CreateAlignments < ActiveRecord::Migration
  def change
    create_table :alignments, id: :bigint do |t|
      t.string   :name,       limit: 15, null: false
      t.timestamps null: false
    end
  end
end
