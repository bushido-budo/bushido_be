# frozen_string_literal: true

class CreateBlockingSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :blocking_systems do |t|
      t.string :blocking_system
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
