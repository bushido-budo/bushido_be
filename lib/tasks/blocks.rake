# frozen_string_literal: true

require 'csv'

namespace :csv_load do
  desc 'loads blocks csv into database'
  task blocks: [:environment] do
    file = 'db/data/blocks.csv'

    CSV.foreach(file, headers: true) do |row|
      Block.create!(
        block: row[0],
        blocking_system_id: row[1]
      )
    end
  end
end
