class CreateCharacterClassSpecializationStages < ActiveRecord::Migration
  def change
create_table :character_class_specialization_stages, id: :bigint do |t|
      t.string    :description,                       limit: 500,             null: false
      t.integer   :unlock_level,                      limit: 4,               null: false
      t.integer   :character_class_specialization_id, limit: 8,               null: false
      t.timestamps null: false
    end

    add_index :character_class_specialization_stages, [:character_class_specialization_id], using: :btree, name: 'specialization_stages_idx'
  end
end
