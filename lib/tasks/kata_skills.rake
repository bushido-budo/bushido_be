require 'csv'

namespace :csv_load do
  desc 'loads kata_skills csv into database'
  task kata_skills: [:environment] do
    file = 'db/data/kata_skills.csv'

    CSV.foreach(file, headers: true) do |row|
      KataSkill.create!(
        kata_skill: row[0],
        kata_skill_level_id: row[1]
      )
    end
  end
end