class CreateCharacterClassSpecializationStage < ActiveRecord::Migration
  def change
    create_table :character_class_specialization_stages, id: :bigint do |t|
      t.text     :description,                       limit: 2147483647
      t.integer  :min_level,                                     null: false
      t.integer  :character_class_specialization_id, limit: 8,   null: false
      t.timestamps null: false
    end

    add_index :character_class_specialization_stages, [:character_class_specialization_id], name: 'specialization_stage_index', using: :btree
    add_index :character_class_specialization_stages, [:character_class_specialization_id, :min_level], name: 'specialization_stage_level_unique', unique: true
  end
end
