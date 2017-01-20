class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins, id: :bigint do |t|
      t.string   :name,       limit: 45,             null: false
      t.string   :variation,  limit: 45,             null: false
      t.integer  :bonus,      limit: 4,  default: 0, null: false
      t.timestamps null: false
    end
  end
end
