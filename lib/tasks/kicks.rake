# frozen_string_literal: true

require 'csv'

namespace :csv_load do
  desc 'loads kicks csv into database'
  task kicks: [:environment] do
    file = 'db/data/kicks.csv'

    CSV.foreach(file, headers: true) do |row|
      Kick.create!(
        kick: row[0],
        belt_rank_id: row[1]
      )
    end
  end
end
