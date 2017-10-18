class CreateCharacterSpecializationStages < ActiveRecord::Migration
  def change
    create_table :character_specialization_stages, id: :bigint do |t|
      t.text      :description,                             null: false
      t.integer   :unlock_level,                limit: 4,   null: false
      t.integer   :character_specialization_id, limit: 8,   null: false
      t.timestamps                                          null: false
    end

    add_index :character_specialization_stages, [:character_specialization_id], using: :btree, name: 'specialization_stages_idx'
  end
end
