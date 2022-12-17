# frozen_string_literal: true

class CreateCombinations < ActiveRecord::Migration[5.2]
  def change
    create_table :combinations do |t|
      t.integer :combination
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
