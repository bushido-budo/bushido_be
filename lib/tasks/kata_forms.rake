require 'csv'

namespace :csv_load do
  desc 'loads kata_forms csv into database'
  task kata_forms: [:environment] do
    file = 'db/data/kata_forms.csv'

    CSV.foreach(file, headers: true) do |row|
      KataForm.create!(
        kata_form: row[0],
        belt_rank_id: row[1]
      )
    end
  end
end