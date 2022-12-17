# frozen_string_literal: true

require 'csv'

namespace :csv_load do
  desc 'loads kempo_techniques csv into database'
  task kempo_techniques: [:environment] do
    file = 'db/data/kempo_techniques.csv'

    CSV.foreach(file, headers: true) do |row|
      KempoTechnique.create!(
        kempo_technique: row[0],
        belt_rank_id: row[1]
      )
    end
  end
end
