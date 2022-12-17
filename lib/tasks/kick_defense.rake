# frozen_string_literal: true

require 'csv'

namespace :csv_load do
  desc 'loads kick_defenses csv into database'
  task kick_defenses: [:environment] do
    file = 'db/data/kick_defenses.csv'

    CSV.foreach(file, headers: true) do |row|
      KickDefense.create!(
        kick_defense: row[0],
        belt_rank_id: row[1]
      )
    end
  end
end
