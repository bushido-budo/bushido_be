# frozen_string_literal: true

require 'csv'

namespace :csv_load do
  desc 'loads values csv into database'
  task users: [:environment] do
    file = 'db/data/user.csv'

    CSV.foreach(file, headers: true) do |row|
      User.create!(
        first_name: row[0],
        last_name: row[1],
        email: row[2],
        password: row[3],
        password_confirmation: row[3],
        address: row[4],
        user_status: row[5]
      )
    end
  end
end
