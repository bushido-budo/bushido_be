# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_221_219_194_929) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'animal_traits', force: :cascade do |t|
    t.string 'characteristic'
    t.bigint 'shaolin_animal_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['shaolin_animal_id'], name: 'index_animal_traits_on_shaolin_animal_id'
  end

  create_table 'belt_ranks', force: :cascade do |t|
    t.string 'rank'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'blocking_systems', force: :cascade do |t|
    t.string 'blocking_system'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_blocking_systems_on_belt_rank_id'
  end

  create_table 'blocks', force: :cascade do |t|
    t.string 'block'
    t.bigint 'blocking_system_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['blocking_system_id'], name: 'index_blocks_on_blocking_system_id'
  end

  create_table 'club_techniques', force: :cascade do |t|
    t.string 'club_technique'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_club_techniques_on_belt_rank_id'
  end

  create_table 'combinations', force: :cascade do |t|
    t.integer 'combination'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_combinations_on_belt_rank_id'
  end

  create_table 'definitions', force: :cascade do |t|
    t.string 'definition'
    t.bigint 'value_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'adult'
    t.index ['value_id'], name: 'index_definitions_on_value_id'
  end

  create_table 'foot_works', force: :cascade do |t|
    t.string 'foot_work'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_foot_works_on_belt_rank_id'
  end

  create_table 'grab_defenses', force: :cascade do |t|
    t.string 'grab_defense'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_grab_defenses_on_belt_rank_id'
  end

  create_table 'kata_forms', force: :cascade do |t|
    t.string 'kata_form'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_kata_forms_on_belt_rank_id'
  end

  create_table 'kata_skill_levels', force: :cascade do |t|
    t.string 'kata_skill_level'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_kata_skill_levels_on_belt_rank_id'
  end

  create_table 'kata_skills', force: :cascade do |t|
    t.string 'kata_skill'
    t.bigint 'kata_skill_level_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['kata_skill_level_id'], name: 'index_kata_skills_on_kata_skill_level_id'
  end

  create_table 'kempo_techniques', force: :cascade do |t|
    t.string 'kempo_technique'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_kempo_techniques_on_belt_rank_id'
  end

  create_table 'kick_defenses', force: :cascade do |t|
    t.string 'kick_defense'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_kick_defenses_on_belt_rank_id'
  end

  create_table 'kicks', force: :cascade do |t|
    t.string 'kick'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_kicks_on_belt_rank_id'
  end

  create_table 'kicks_of_the_four_tides', force: :cascade do |t|
    t.integer 'kick_tide'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_kicks_of_the_four_tides_on_belt_rank_id'
  end

  create_table 'shaolin_animals', force: :cascade do |t|
    t.string 'animal'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'skills', force: :cascade do |t|
    t.string 'skill'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_skills_on_belt_rank_id'
  end

  create_table 'stances', force: :cascade do |t|
    t.string 'stance'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_stances_on_belt_rank_id'
  end

  create_table 'strikes', force: :cascade do |t|
    t.string 'strike_name'
    t.string 'strike_type'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['belt_rank_id'], name: 'index_strikes_on_belt_rank_id'
  end

  create_table 'user_belt_ranks', force: :cascade do |t|
    t.bigint 'user_id'
    t.bigint 'belt_rank_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'jump_rope'
    t.integer 'sit_ups'
    t.integer 'balanced_kicks'
    t.integer 'lunge_pumps'
    t.index ['belt_rank_id'], name: 'index_user_belt_ranks_on_belt_rank_id'
    t.index ['user_id'], name: 'index_user_belt_ranks_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'email'
    t.string 'password_digest'
    t.string 'address'
    t.integer 'user_status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'values', force: :cascade do |t|
    t.string 'value'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'animal_traits', 'shaolin_animals'
  add_foreign_key 'blocking_systems', 'belt_ranks'
  add_foreign_key 'blocks', 'blocking_systems'
  add_foreign_key 'club_techniques', 'belt_ranks'
  add_foreign_key 'combinations', 'belt_ranks'
  add_foreign_key 'definitions', '"values"', column: 'value_id'
  add_foreign_key 'foot_works', 'belt_ranks'
  add_foreign_key 'grab_defenses', 'belt_ranks'
  add_foreign_key 'kata_forms', 'belt_ranks'
  add_foreign_key 'kata_skill_levels', 'belt_ranks'
  add_foreign_key 'kata_skills', 'kata_skill_levels'
  add_foreign_key 'kempo_techniques', 'belt_ranks'
  add_foreign_key 'kick_defenses', 'belt_ranks'
  add_foreign_key 'kicks', 'belt_ranks'
  add_foreign_key 'kicks_of_the_four_tides', 'belt_ranks'
  add_foreign_key 'skills', 'belt_ranks'
  add_foreign_key 'stances', 'belt_ranks'
  add_foreign_key 'strikes', 'belt_ranks'
  add_foreign_key 'user_belt_ranks', 'belt_ranks'
  add_foreign_key 'user_belt_ranks', 'users'
end
