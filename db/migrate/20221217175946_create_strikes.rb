# frozen_string_literal: true

class CreateStrikes < ActiveRecord::Migration[5.2]
  def change
    create_table :strikes do |t|
      t.string :strike_name
      t.string :type
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
