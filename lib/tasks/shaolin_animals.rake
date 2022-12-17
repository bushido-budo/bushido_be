# frozen_string_literal: true

require 'csv'

namespace :csv_load do
  desc 'loads shaolin_animals csv into database'
  task shaolin_animals: [:environment] do
    file = 'db/data/shaolin_animals.csv'

    CSV.foreach(file, headers: true) do |row|
      ShaolinAnimal.create!(
        animal: row[1]
      )
    end
  end
end
