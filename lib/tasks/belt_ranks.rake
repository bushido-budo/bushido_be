require 'csv'

namespace :csv_load do
  desc 'loads karate csv into database'
  task belt_ranks: [:environment] do
    file = 'db/data/belt_ranks.csv'

    CSV.foreach(file, headers: true) do |row|
      BeltRank.create!(
        id: row[0],
        rank: row[1]
      )
    end
  end
end
