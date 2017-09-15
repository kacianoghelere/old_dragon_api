# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170120110842) do

  create_table "alignments", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 15, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "armor_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 45, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "armors", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",               limit: 45,                             null: false
    t.string   "description",        limit: 500
    t.integer  "armor_class",        limit: 4,                  default: 0, null: false
    t.integer  "movement_reduction", limit: 4,                  default: 0
    t.decimal  "price",                          precision: 10, default: 0, null: false
    t.integer  "alignment_id",       limit: 8,                              null: false
    t.integer  "armor_type_id",      limit: 8,                              null: false
    t.integer  "origin_id",          limit: 8,                              null: false
    t.integer  "user_id",            limit: 8,                              null: false
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

  add_index "armors", ["alignment_id"], name: "index_armors_on_alignment_id", using: :btree
  add_index "armors", ["armor_type_id"], name: "index_armors_on_armor_type_id", using: :btree
  add_index "armors", ["origin_id"], name: "index_armors_on_origin_id", using: :btree
  add_index "armors", ["user_id"], name: "index_armors_on_user_id", using: :btree

  create_table "campaign_journals", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "title",       limit: 45,                   null: false
    t.text     "description", limit: 65535,                null: false
    t.boolean  "idactive",                  default: true, null: false
    t.integer  "campaign_id", limit: 8,                    null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "campaign_journals", ["campaign_id"], name: "index_campaign_journals_on_campaign_id", using: :btree

  create_table "campaign_members", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "campaign_id",  limit: 8,                null: false
    t.integer  "character_id", limit: 8,                null: false
    t.boolean  "idactive",               default: true, null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "campaign_members", ["campaign_id"], name: "index_campaign_members_on_campaign_id", using: :btree
  add_index "campaign_members", ["character_id"], name: "index_campaign_members_on_character_id", using: :btree

  create_table "campaign_notes", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "description", limit: 300
    t.boolean  "dm_only",                 default: false, null: false
    t.boolean  "idactive",                default: true,  null: false
    t.integer  "campaign_id", limit: 8,                   null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "campaign_notes", ["campaign_id"], name: "index_campaign_notes_on_campaign_id", using: :btree

  create_table "campaigns", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "title",           limit: 45,    null: false
    t.string   "picture",         limit: 300
    t.text     "description",     limit: 65535
    t.datetime "start_date",                    null: false
    t.datetime "conclusion_date"
    t.integer  "user_id",         limit: 8,     null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "campaigns", ["user_id"], name: "index_campaigns_on_user_id", using: :btree

  create_table "character_class_armor_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "character_class_id", limit: 8, null: false
    t.integer  "armor_type_id",      limit: 8, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "character_class_armor_types", ["armor_type_id"], name: "index_character_class_armor_types_on_armor_type_id", using: :btree
  add_index "character_class_armor_types", ["character_class_id"], name: "index_character_class_armor_types_on_character_class_id", using: :btree

  create_table "character_class_evolutions", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "level",              limit: 4, default: 1, null: false
    t.integer  "exp",                limit: 8,             null: false
    t.integer  "life_amount",        limit: 4,             null: false
    t.boolean  "plus_life",                                null: false
    t.integer  "attack_base",        limit: 4,             null: false
    t.integer  "attack_base2",       limit: 4, default: 0, null: false
    t.integer  "protection_mod",     limit: 4,             null: false
    t.integer  "character_class_id", limit: 8,             null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "character_class_evolutions", ["character_class_id"], name: "index_character_class_evolutions_on_character_class_id", using: :btree

  create_table "character_class_item_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "character_class_id", limit: 8, null: false
    t.integer  "item_type_id",       limit: 8, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "character_class_item_types", ["character_class_id"], name: "index_character_class_item_types_on_character_class_id", using: :btree
  add_index "character_class_item_types", ["item_type_id"], name: "index_character_class_item_types_on_item_type_id", using: :btree

  create_table "character_class_magic_circles", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "level",              limit: 4, default: 1, null: false
    t.integer  "circle_1",           limit: 4, default: 0, null: false
    t.integer  "circle_2",           limit: 4, default: 0, null: false
    t.integer  "circle_3",           limit: 4, default: 0, null: false
    t.integer  "circle_4",           limit: 4, default: 0, null: false
    t.integer  "circle_5",           limit: 4, default: 0, null: false
    t.integer  "circle_6",           limit: 4, default: 0, null: false
    t.integer  "circle_7",           limit: 4, default: 0, null: false
    t.integer  "circle_8",           limit: 4, default: 0, null: false
    t.integer  "circle_9",           limit: 4, default: 0, null: false
    t.integer  "character_class_id", limit: 8,             null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "character_class_magic_circles", ["character_class_id"], name: "index_character_class_magic_circles_on_character_class_id", using: :btree

  create_table "character_class_requirements", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "str_mod",            limit: 4, default: 0, null: false
    t.integer  "dex_mod",            limit: 4, default: 0, null: false
    t.integer  "cons_mod",           limit: 4, default: 0, null: false
    t.integer  "int_mod",            limit: 4, default: 0, null: false
    t.integer  "wis_mod",            limit: 4, default: 0, null: false
    t.integer  "char_mod",           limit: 4, default: 0, null: false
    t.integer  "character_class_id", limit: 8,             null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "character_class_requirements", ["character_class_id"], name: "index_character_class_requirements_on_character_class_id", using: :btree
  add_index "character_class_requirements", ["character_class_id"], name: "index_character_class_requirements_on_character_class_id_uk", unique: true, using: :btree

  create_table "character_class_specialization_stages", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "description",                       limit: 500, null: false
    t.integer  "unlock_level",                      limit: 4,   null: false
    t.integer  "character_class_specialization_id", limit: 8,   null: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "character_class_specialization_stages", ["character_class_specialization_id"], name: "specialization_stages_idx", using: :btree

  create_table "character_class_specializations", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",               limit: 45,              null: false
    t.string   "description",        limit: 500,             null: false
    t.integer  "min_level",          limit: 4,   default: 1, null: false
    t.integer  "character_class_id", limit: 8,               null: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "character_class_specializations", ["character_class_id"], name: "index_character_class_specializations_on_character_class_id", using: :btree

  create_table "character_class_spell_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "character_class_id", limit: 8, null: false
    t.integer  "spell_type_id",      limit: 8, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "character_class_spell_types", ["character_class_id"], name: "index_character_class_spell_types_on_character_class_id", using: :btree
  add_index "character_class_spell_types", ["spell_type_id"], name: "index_character_class_spell_types_on_spell_type_id", using: :btree

  create_table "character_class_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",              limit: 45,                 null: false
    t.integer  "protection",        limit: 4,                  null: false
    t.string   "key_attr",          limit: 4,  default: "0",   null: false
    t.boolean  "can_use_magic",                default: false, null: false
    t.boolean  "can_bane_undead",              default: false, null: false
    t.boolean  "has_thief_talents",            default: false, null: false
    t.integer  "spell_type_id",     limit: 8
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "character_class_types", ["spell_type_id"], name: "index_character_class_types_on_spell_type_id", using: :btree

  create_table "character_class_weapon_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "character_class_id", limit: 8, null: false
    t.integer  "weapon_type_id",     limit: 8, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "character_class_weapon_types", ["character_class_id"], name: "index_character_class_weapon_types_on_character_class_id", using: :btree
  add_index "character_class_weapon_types", ["weapon_type_id"], name: "index_character_class_weapon_types_on_weapon_type_id", using: :btree

  create_table "character_classes", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",                    limit: 45,    null: false
    t.string   "picture",                 limit: 300
    t.text     "description",             limit: 65535
    t.integer  "dice_id",                 limit: 8,     null: false
    t.integer  "character_class_type_id", limit: 8,     null: false
    t.integer  "user_id",                 limit: 8,     null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "character_classes", ["character_class_type_id"], name: "index_character_classes_on_character_class_type_id", using: :btree
  add_index "character_classes", ["dice_id"], name: "index_character_classes_on_dice_id", using: :btree
  add_index "character_classes", ["user_id"], name: "index_character_classes_on_user_id", using: :btree

  create_table "character_expertises", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "character_id", limit: 8, null: false
    t.integer  "expertise_id", limit: 8, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "character_expertises", ["character_id"], name: "index_character_expertises_on_character_id", using: :btree
  add_index "character_expertises", ["expertise_id"], name: "index_character_expertises_on_expertise_id", using: :btree

  create_table "character_journals", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "current_level", limit: 4
    t.integer  "current_exp",   limit: 4
    t.integer  "strength",      limit: 4, default: 0,    null: false
    t.integer  "dexterity",     limit: 4, default: 0,    null: false
    t.integer  "constitution",  limit: 4, default: 0,    null: false
    t.integer  "intelligence",  limit: 4, default: 0,    null: false
    t.integer  "wisdom",        limit: 4, default: 0,    null: false
    t.integer  "charisma",      limit: 4, default: 0,    null: false
    t.boolean  "idactive",                default: true, null: false
    t.integer  "character_id",  limit: 8,                null: false
    t.integer  "alignment_id",  limit: 8,                null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "character_journals", ["alignment_id"], name: "index_character_journals_on_alignment_id", using: :btree
  add_index "character_journals", ["character_id"], name: "index_character_journals_on_character_id", using: :btree

  create_table "character_race_armors", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "armor_type_id",     limit: 8, null: false
    t.integer  "character_race_id", limit: 8, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "character_race_armors", ["armor_type_id"], name: "index_character_race_armors_on_armor_type_id", using: :btree
  add_index "character_race_armors", ["character_race_id"], name: "index_character_race_armors_on_character_race_id", using: :btree

  create_table "character_race_languages", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "character_race_id", limit: 8, null: false
    t.integer  "language_type_id",  limit: 8, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "character_race_languages", ["character_race_id"], name: "index_character_race_languages_on_character_race_id", using: :btree
  add_index "character_race_languages", ["language_type_id"], name: "index_character_race_languages_on_language_type_id", using: :btree

  create_table "character_race_skills", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "character_race_id", limit: 8, null: false
    t.integer  "skill_id",          limit: 8, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "character_race_skills", ["character_race_id"], name: "index_character_race_skills_on_character_race_id", using: :btree
  add_index "character_race_skills", ["skill_id"], name: "index_character_race_skills_on_skill_id", using: :btree

  create_table "character_race_thief_talents", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "lockpick",          limit: 4
    t.integer  "traps",             limit: 4
    t.integer  "climb",             limit: 4
    t.integer  "stealth",           limit: 4
    t.integer  "pickpocket",        limit: 4
    t.integer  "perception",        limit: 4
    t.integer  "sneak_attack",      limit: 4
    t.integer  "character_race_id", limit: 8, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "character_race_thief_talents", ["character_race_id"], name: "index_character_race_thief_talents_on_character_race_id", using: :btree

  create_table "character_race_traits", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "character_race_id", limit: 8, null: false
    t.integer  "trait_id",          limit: 8, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "character_race_traits", ["character_race_id"], name: "index_character_race_traits_on_character_race_id", using: :btree
  add_index "character_race_traits", ["trait_id"], name: "index_character_race_traits_on_trait_id", using: :btree

  create_table "character_race_weapons", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "character_race_id", limit: 8, null: false
    t.integer  "weapon_type_id",    limit: 8, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "character_race_weapons", ["character_race_id"], name: "index_character_race_weapons_on_character_race_id", using: :btree
  add_index "character_race_weapons", ["weapon_type_id"], name: "index_character_race_weapons_on_weapon_type_id", using: :btree

  create_table "character_races", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",          limit: 45,                                   null: false
    t.text     "description",   limit: 65535
    t.string   "picture",       limit: 300
    t.decimal  "min_height",                  precision: 10, default: 0
    t.decimal  "max_height",                  precision: 10, default: 0
    t.decimal  "min_weight",                  precision: 10
    t.decimal  "max_weight",                  precision: 10
    t.integer  "maturity",      limit: 4
    t.integer  "max_age",       limit: 4
    t.integer  "movement_base", limit: 4,                    default: 1,     null: false
    t.boolean  "versatile_mod",                              default: false, null: false
    t.integer  "str_mod",       limit: 4,                    default: 0,     null: false
    t.integer  "dex_mod",       limit: 4,                    default: 0,     null: false
    t.integer  "cons_mod",      limit: 4,                    default: 0,     null: false
    t.integer  "int_mod",       limit: 4,                    default: 0,     null: false
    t.integer  "wis_mod",       limit: 4,                    default: 0,     null: false
    t.integer  "char_mod",      limit: 4,                    default: 0,     null: false
    t.integer  "alignment_id",  limit: 8,                                    null: false
    t.integer  "dice_id",       limit: 8
    t.integer  "user_id",       limit: 8,                                    null: false
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  add_index "character_races", ["alignment_id"], name: "index_character_races_on_alignment_id", using: :btree
  add_index "character_races", ["dice_id"], name: "index_character_races_on_dice_id", using: :btree
  add_index "character_races", ["user_id"], name: "index_character_races_on_user_id", using: :btree

  create_table "characters", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",               limit: 45
    t.string   "picture",            limit: 300
    t.decimal  "weight",                           precision: 10
    t.decimal  "height",                           precision: 10
    t.integer  "age",                limit: 4
    t.text     "description",        limit: 65535
    t.integer  "character_class_id", limit: 8,                    null: false
    t.integer  "character_race_id",  limit: 8,                    null: false
    t.integer  "user_id",            limit: 8,                    null: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "characters", ["character_class_id"], name: "index_characters_on_character_class_id", using: :btree
  add_index "characters", ["character_race_id"], name: "index_characters_on_character_race_id", using: :btree
  add_index "characters", ["user_id"], name: "index_characters_on_user_id", using: :btree

  create_table "charisma_mods", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "value",         limit: 4,                null: false
    t.integer  "followers_mod", limit: 4,  default: 0,   null: false
    t.integer  "reaction_mod",  limit: 4,  default: 0,   null: false
    t.string   "undead_mod",    limit: 10, default: "0", null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "constitution_mods", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "value",            limit: 4,             null: false
    t.integer  "hitpoints_mod",    limit: 4, default: 0, null: false
    t.integer  "protection_mod",   limit: 4, default: 0, null: false
    t.integer  "resurrection_mod", limit: 4, default: 0, null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "dexterity_mods", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "value",           limit: 4,             null: false
    t.integer  "attack_mod",      limit: 4, default: 0, null: false
    t.integer  "surprise_mod",    limit: 4, default: 0, null: false
    t.integer  "armor_class_mod", limit: 4, default: 0, null: false
    t.integer  "protection_mod",  limit: 4, default: 0, null: false
    t.integer  "lockpick",        limit: 4
    t.integer  "traps",           limit: 4
    t.integer  "climb",           limit: 4
    t.integer  "stealth",         limit: 4
    t.integer  "pickpocket",      limit: 4
    t.integer  "perception",      limit: 4
    t.integer  "sneak_attack",    limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "dices", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "effect_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 45, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "effects", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",           limit: 45
    t.string   "description",    limit: 500
    t.integer  "effect_type_id", limit: 8,   null: false
    t.integer  "user_id",        limit: 8,   null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "effects", ["effect_type_id"], name: "index_effects_on_effect_type_id", using: :btree
  add_index "effects", ["user_id"], name: "index_effects_on_user_id", using: :btree

  create_table "element_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 45, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "expertises", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 45
    t.integer  "modifier",   limit: 4
    t.string   "attr",       limit: 4
    t.integer  "user_id",    limit: 8,  null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "expertises", ["user_id"], name: "index_expertises_on_user_id", using: :btree

  create_table "intelligence_mods", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "value",              limit: 4,             null: false
    t.integer  "languages_mod",      limit: 4, default: 0, null: false
    t.integer  "learn_magic_mod",    limit: 4, default: 0, null: false
    t.integer  "magic_circle_1_mod", limit: 4, default: 0, null: false
    t.integer  "magic_circle_2_mod", limit: 4, default: 0, null: false
    t.integer  "magic_circle_3_mod", limit: 4, default: 0, null: false
    t.integer  "magic_circle_4_mod", limit: 4, default: 0, null: false
    t.integer  "magic_circle_5_mod", limit: 4, default: 0, null: false
    t.integer  "magic_circle_6_mod", limit: 4, default: 0, null: false
    t.integer  "magic_circle_7_mod", limit: 4, default: 0, null: false
    t.integer  "magic_circle_8_mod", limit: 4, default: 0, null: false
    t.integer  "magic_circle_9_mod", limit: 4, default: 0, null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "item_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 45, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "items", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",         limit: 45,                 null: false
    t.string   "description",  limit: 500
    t.decimal  "weight",                   precision: 10
    t.integer  "price",        limit: 4
    t.integer  "item_type_id", limit: 8,                  null: false
    t.integer  "user_id",      limit: 8,                  null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "items", ["item_type_id"], name: "index_items_on_item_type_id", using: :btree
  add_index "items", ["user_id"], name: "index_items_on_user_id", using: :btree

  create_table "language_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",        limit: 45,    null: false
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "material_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 45
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "origins", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 45,             null: false
    t.string   "variation",  limit: 45,             null: false
    t.integer  "bonus",      limit: 4,  default: 0, null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "roles", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 45,                 null: false
    t.boolean  "admin",                 default: false, null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "skill_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 45, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "skills", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",          limit: 45
    t.string   "description",   limit: 500
    t.integer  "effect_id",     limit: 8
    t.integer  "skill_type_id", limit: 8,   null: false
    t.integer  "user_id",       limit: 8,   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "skills", ["effect_id"], name: "index_skills_on_effect_id", using: :btree
  add_index "skills", ["skill_type_id"], name: "index_skills_on_skill_type_id", using: :btree
  add_index "skills", ["user_id"], name: "index_skills_on_user_id", using: :btree

  create_table "spell_circles", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "circle",        limit: 4, default: 0, null: false
    t.integer  "spell_type_id", limit: 8,             null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "spell_circles", ["spell_type_id"], name: "index_spell_circles_on_spell_type_id", using: :btree

  create_table "spell_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 45, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "spells", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",            limit: 45,  null: false
    t.string   "range",           limit: 45,  null: false
    t.string   "duration",        limit: 45,  null: false
    t.string   "description",     limit: 500, null: false
    t.integer  "effect_id",       limit: 8,   null: false
    t.integer  "element_type_id", limit: 8,   null: false
    t.integer  "spell_circle_id", limit: 8,   null: false
    t.integer  "user_id",         limit: 8,   null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "spells", ["effect_id"], name: "index_spells_on_effect_id", using: :btree
  add_index "spells", ["element_type_id"], name: "index_spells_on_element_type_id", using: :btree
  add_index "spells", ["spell_circle_id"], name: "index_spells_on_spell_circle_id", using: :btree
  add_index "spells", ["user_id"], name: "index_spells_on_user_id", using: :btree

  create_table "strength_mods", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "value",      limit: 4,             null: false
    t.integer  "attack_mod", limit: 4, default: 0, null: false
    t.integer  "damage_mod", limit: 4, default: 0, null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "thief_talents", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "level",              limit: 4, null: false
    t.integer  "lockpick",           limit: 4, null: false
    t.integer  "traps",              limit: 4, null: false
    t.integer  "climb",              limit: 4, null: false
    t.integer  "stealth",            limit: 4, null: false
    t.integer  "pickpocket",         limit: 4, null: false
    t.integer  "perception",         limit: 4, null: false
    t.integer  "sneak_attack",       limit: 4, null: false
    t.integer  "character_class_id", limit: 8, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "thief_talents", ["character_class_id"], name: "index_thief_talents_on_character_class_id", using: :btree

  create_table "trait_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 45, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "traits", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",                limit: 45
    t.string   "description",         limit: 500
    t.integer  "armor_class_bonus",   limit: 4,   default: 0
    t.integer  "meele_attack_bonus",  limit: 4,   default: 0
    t.integer  "ranged_attack_bonus", limit: 4,   default: 0
    t.integer  "lockpick",            limit: 4,   default: 0
    t.integer  "traps",               limit: 4,   default: 0
    t.integer  "climb",               limit: 4,   default: 0
    t.integer  "stealth",             limit: 4,   default: 0
    t.integer  "pickpocket",          limit: 4,   default: 0
    t.integer  "perception",          limit: 4,   default: 0
    t.integer  "sneak_attack",        limit: 4,   default: 0
    t.integer  "trait_type_id",       limit: 8,               null: false
    t.integer  "user_id",             limit: 8,               null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "traits", ["trait_type_id"], name: "index_traits_on_trait_type_id", using: :btree
  add_index "traits", ["user_id"], name: "index_traits_on_user_id", using: :btree

  create_table "undead_banes", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "level",              limit: 4, default: 1, null: false
    t.string   "dv1",                limit: 2,             null: false
    t.string   "dv2",                limit: 2,             null: false
    t.string   "dv3",                limit: 2,             null: false
    t.string   "dv4",                limit: 2,             null: false
    t.string   "dv5",                limit: 2,             null: false
    t.string   "dv6",                limit: 2,             null: false
    t.string   "dv7",                limit: 2,             null: false
    t.string   "dv8",                limit: 2,             null: false
    t.string   "dv9",                limit: 2,             null: false
    t.string   "dv10",               limit: 2,             null: false
    t.string   "dv11",               limit: 2,             null: false
    t.string   "dv12",               limit: 2,             null: false
    t.string   "dv13",               limit: 2,             null: false
    t.string   "dv14",               limit: 2,             null: false
    t.string   "dv15",               limit: 2,             null: false
    t.string   "dv16",               limit: 2,             null: false
    t.string   "dv17",               limit: 2,             null: false
    t.string   "dv18",               limit: 2,             null: false
    t.integer  "character_class_id", limit: 8,             null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "undead_banes", ["character_class_id"], name: "index_undead_banes_on_character_class_id", using: :btree

  create_table "users", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",            limit: 45,  null: false
    t.string   "user_code",       limit: 45,  null: false
    t.string   "password_digest", limit: 255
    t.datetime "last_login"
    t.string   "email",           limit: 64
    t.integer  "role_id",         limit: 8,   null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree
  add_index "users", ["user_code"], name: "index_users_on_user_code", unique: true, using: :btree

  create_table "weapon_sizes", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",             limit: 100, null: false
    t.string   "alternative_name", limit: 100, null: false
    t.string   "alias",            limit: 1,   null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "weapon_types", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       limit: 45, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "weapons", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",             limit: 45,                                 null: false
    t.string   "description",      limit: 500
    t.integer  "initiative",       limit: 4,                  default: 0,     null: false
    t.boolean  "ranged",                                      default: false, null: false
    t.integer  "range",            limit: 4,                  default: 0,     null: false
    t.string   "damage",           limit: 45,                                 null: false
    t.decimal  "weight",                       precision: 10,                 null: false
    t.decimal  "price",                        precision: 10,                 null: false
    t.integer  "alignment_id",     limit: 8,                                  null: false
    t.integer  "dice_id",          limit: 8,                                  null: false
    t.integer  "material_type_id", limit: 8,                                  null: false
    t.integer  "origin_id",        limit: 8,                                  null: false
    t.integer  "user_id",          limit: 8,                                  null: false
    t.integer  "weapon_size_id",   limit: 8,                                  null: false
    t.integer  "weapon_type_id",   limit: 8,                                  null: false
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
  end

  add_index "weapons", ["alignment_id"], name: "index_weapons_on_alignment_id", using: :btree
  add_index "weapons", ["dice_id"], name: "index_weapons_on_dice_id", using: :btree
  add_index "weapons", ["material_type_id"], name: "index_weapons_on_material_type_id", using: :btree
  add_index "weapons", ["origin_id"], name: "index_weapons_on_origin_id", using: :btree
  add_index "weapons", ["user_id"], name: "index_weapons_on_user_id", using: :btree
  add_index "weapons", ["weapon_size_id"], name: "index_weapons_on_weapon_size_id", using: :btree
  add_index "weapons", ["weapon_type_id"], name: "index_weapons_on_weapon_type_id", using: :btree

  create_table "wisdom_mods", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "value",             limit: 4,             null: false
    t.integer  "protection_mod",    limit: 4, default: 0, null: false
    t.integer  "magic_cicle_1_mod", limit: 4, default: 0, null: false
    t.integer  "magic_cicle_2_mod", limit: 4, default: 0, null: false
    t.integer  "magic_cicle_3_mod", limit: 4, default: 0, null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_foreign_key "armors", "alignments"
  add_foreign_key "armors", "armor_types"
  add_foreign_key "armors", "origins"
  add_foreign_key "armors", "users"
  add_foreign_key "campaign_journals", "campaigns"
  add_foreign_key "campaign_members", "campaigns"
  add_foreign_key "campaign_members", "characters"
  add_foreign_key "campaign_notes", "campaigns"
  add_foreign_key "campaigns", "users"
  add_foreign_key "character_class_armor_types", "armor_types"
  add_foreign_key "character_class_armor_types", "character_classes"
  add_foreign_key "character_class_evolutions", "character_classes"
  add_foreign_key "character_class_item_types", "character_classes"
  add_foreign_key "character_class_item_types", "item_types"
  add_foreign_key "character_class_magic_circles", "character_classes"
  add_foreign_key "character_class_requirements", "character_classes"
  add_foreign_key "character_class_specialization_stages", "character_class_specializations"
  add_foreign_key "character_class_specializations", "character_classes"
  add_foreign_key "character_class_spell_types", "character_classes"
  add_foreign_key "character_class_spell_types", "spell_types"
  add_foreign_key "character_class_types", "spell_types"
  add_foreign_key "character_class_weapon_types", "character_classes"
  add_foreign_key "character_class_weapon_types", "weapon_types"
  add_foreign_key "character_classes", "character_class_types"
  add_foreign_key "character_classes", "dices"
  add_foreign_key "character_classes", "users"
  add_foreign_key "character_expertises", "characters"
  add_foreign_key "character_expertises", "expertises"
  add_foreign_key "character_journals", "alignments"
  add_foreign_key "character_journals", "characters"
  add_foreign_key "character_race_armors", "armor_types"
  add_foreign_key "character_race_armors", "character_races"
  add_foreign_key "character_race_languages", "character_races"
  add_foreign_key "character_race_languages", "language_types"
  add_foreign_key "character_race_skills", "character_races"
  add_foreign_key "character_race_skills", "skills"
  add_foreign_key "character_race_thief_talents", "character_races"
  add_foreign_key "character_race_traits", "character_races"
  add_foreign_key "character_race_traits", "traits"
  add_foreign_key "character_race_weapons", "character_races"
  add_foreign_key "character_race_weapons", "weapon_types"
  add_foreign_key "character_races", "alignments"
  add_foreign_key "character_races", "dices"
  add_foreign_key "character_races", "users"
  add_foreign_key "characters", "character_classes"
  add_foreign_key "characters", "character_races"
  add_foreign_key "characters", "users"
  add_foreign_key "effects", "effect_types"
  add_foreign_key "effects", "users"
  add_foreign_key "expertises", "users"
  add_foreign_key "items", "item_types"
  add_foreign_key "items", "users"
  add_foreign_key "skills", "effects"
  add_foreign_key "skills", "skill_types"
  add_foreign_key "skills", "users"
  add_foreign_key "spell_circles", "spell_types"
  add_foreign_key "spells", "effects"
  add_foreign_key "spells", "element_types"
  add_foreign_key "spells", "spell_circles"
  add_foreign_key "spells", "users"
  add_foreign_key "thief_talents", "character_classes"
  add_foreign_key "traits", "trait_types"
  add_foreign_key "traits", "users"
  add_foreign_key "undead_banes", "character_classes"
  add_foreign_key "users", "roles"
  add_foreign_key "weapons", "alignments"
  add_foreign_key "weapons", "dices"
  add_foreign_key "weapons", "material_types"
  add_foreign_key "weapons", "origins"
  add_foreign_key "weapons", "users"
  add_foreign_key "weapons", "weapon_sizes"
  add_foreign_key "weapons", "weapon_types"
end
