class CreateExpertises < ActiveRecord::Migration
  def change
    create_table :expertises, id: :bigint do |t|
      t.string   :name,       limit: 45
      t.integer  :modifier,   limit: 4
      t.string   :attr,       limit: 4
      t.integer  :user_id,    limit: 8,  null: false
      t.timestamps null: false
    end

    add_index :expertises, [:user_id], using: :btree
  end
end
