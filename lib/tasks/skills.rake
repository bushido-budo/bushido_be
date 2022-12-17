require 'csv'

namespace :csv_load do
  desc 'loads skills csv into database'
  task skills: [:environment] do
    file = 'db/data/skills.csv'

    CSV.foreach(file, headers: true) do |row|
      Skill.create!(
        skill: row[0],
        belt_rank_id: row[1]
      )
    end
  end
end