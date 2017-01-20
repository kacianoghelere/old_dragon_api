class CreateDices < ActiveRecord::Migration
  def change
    create_table :dices, id: :bigint do |t|
      t.string   :name,       limit: 4, null: false
      t.timestamps null: false
    end
  end
end
