require 'csv'

namespace :csv_load do
  desc 'loads value definitions into db'
  task definitions: [:environment] do
    file = 'db/data/definitions.csv'

    CSV.foreach(file, headers: true) do |row|
      Definitioin.create!(
        definition: row[0],
        value_id: row[1],
        adult: row[2]
      )
    end
  end
end