# frozen_string_literal: true

class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :skill
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
