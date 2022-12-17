# frozen_string_literal: true

require 'csv'

namespace :csv_load do
  desc 'loads club_techniques csv into database'
  task club_techniques: [:environment] do
    file = 'db/data/club_techniques.csv'

    CSV.foreach(file, headers: true) do |row|
      ClubTechnique.create!(
        club_technique: row[0],
        belt_rank_id: row[1]
      )
    end
  end
end
