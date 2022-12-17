require 'csv'

namespace :csv_load do
  desc 'loads values csv into database'
  task values: [:environment] do
    file = 'db/data/values.csv'

    CSV.foreach(file, headers: true) do |row|
      Value.create!(
        value: row[0]
      )
    end
  end
end