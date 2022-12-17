# frozen_string_literal: true

require 'csv'

namespace :csv_load do
  desc 'loads stances csv into database'
  task stances: [:environment] do
    file = 'db/data/stances.csv'

    CSV.foreach(file, headers: true) do |row|
      Stance.create!(
        stance: row[0],
        belt_rank_id: row[1]
      )
    end
  end
end
