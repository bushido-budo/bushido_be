require 'csv'

namespace :csv_load do
  desc 'loads foot_works csv into database'
  task foot_works: [:environment] do
    file = 'db/data/foot_works.csv'

    CSV.foreach(file, headers: true) do |row|
      FootWork.create!(
        foot_work: row[0],
        belt_rank_id: row[1]
      )
    end
  end
end