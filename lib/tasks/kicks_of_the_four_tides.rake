# frozen_string_literal: true

require 'csv'

namespace :csv_load do
  desc 'loads kicks_of_the_four_tides csv into database'
  task kicks_of_the_four_tides: [:environment] do
    file = 'db/data/kicks_of_the_four_tides.csv'

    CSV.foreach(file, headers: true) do |row|
      KicksOfTheFourTide.create!(
        kick_tide: row[0],
        belt_rank_id: row[1]
      )
    end
  end
end
