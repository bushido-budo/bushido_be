require 'csv'

namespace :csv_load do
  desc 'loads strikes csv into database'
  task strikes: [:environment] do
    file = 'db/data/strikes.csv'

    CSV.foreach(file, headers: true) do |row|
      Strike.create!(
        strike_name: row[0],
        strike_type: row[1],
        belt_rank_id: row[2]
      )
    end
  end
end