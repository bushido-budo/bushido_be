# frozen_string_literal: true

namespace :csv_load do
  desc 'adds data to every table in the database'
  task all: %i[environment
               belt_ranks
               shaolin_animals
               blocking_systems
               animal_traits
               blocks
               club_techniques
               combinations
               foot_works
               grab_defenses
               kata_forms
               kata_skill_levels
               kata_skills
               kempo_techniques
               kick_defenses
               kicks_of_the_four_tides
               kicks
               skills
               stances
               strikes
               values
               users] do
  end
end
