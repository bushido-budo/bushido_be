# frozen_string_literal: true

class CreateValues < ActiveRecord::Migration[5.2]
  def change
    create_table :values do |t|
      t.string :value

      t.timestamps
    end
  end
end
