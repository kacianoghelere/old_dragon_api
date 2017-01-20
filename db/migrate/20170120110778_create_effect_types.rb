class CreateEffectTypes < ActiveRecord::Migration
  def change
    create_table :effect_types, id: :bigint do |t|
      t.string   :name,       limit: 45, null: false
      t.timestamps null: false
    end
  end
end
