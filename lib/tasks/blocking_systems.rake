# frozen_string_literal: true

require 'csv'

namespace :csv_load do
  desc 'loads blocking systems csv into database'
  task blocking_systems: [:environment] do
    file = 'db/data/blocking_systems.csv'

    CSV.foreach(file, headers: true) do |row|
      BlockingSystem.create!(
        blocking_system: row[1],
        belt_rank_id: row[2]
      )
    end
  end
end
