require 'csv'

namespace :csv_load do
  desc 'loads grab_defenses csv into database'
  task grab_defenses: [:environment] do
    file = 'db/data/grab_defenses.csv'

    CSV.foreach(file, headers: true) do |row|
      GrabDefense.create!(
        grab_defense: row[0],
        belt_rank_id: row[1]
      )
    end
  end
end