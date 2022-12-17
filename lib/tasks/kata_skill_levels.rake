# frozen_string_literal: true

require 'csv'

namespace :csv_load do
  desc 'loads kata_skill_levels csv into database'
  task kata_skill_levels: [:environment] do
    file = 'db/data/kata_skill_levels.csv'

    CSV.foreach(file, headers: true) do |row|
      KataSkillLevel.create!(
        kata_skill_level: row[1],
        belt_rank_id: row[2]
      )
    end
  end
end
