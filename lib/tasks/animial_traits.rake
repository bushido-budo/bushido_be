require 'csv'

namespace :csv_load do
  desc 'loads animal train csv into database'
  task animal_traits: [:environment] do
    file = 'db/data/animal_traits.csv'

    CSV.foreach(file, headers: true) do |row|
      AnimalTrait.create!(
        characteristic: row[0],
        shaolin_animal_id: row[1]
      )
    end
  end
end