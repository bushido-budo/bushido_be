# frozen_string_literal: true

require 'csv'

namespace :csv_load do
  desc 'loads combinations csv into database'
  task combinations: [:environment] do
    file = 'db/data/combinations.csv'

    CSV.foreach(file, headers: true) do |row|
      Combination.create!(
        combination: row[0],
        belt_rank_id: row[1]
      )
    end
  end
end
