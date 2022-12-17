# frozen_string_literal: true

class CreateKicksOfTheFourTides < ActiveRecord::Migration[5.2]
  def change
    create_table :kicks_of_the_four_tides do |t|
      t.integer :kick_tide
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
