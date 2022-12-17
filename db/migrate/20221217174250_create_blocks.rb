# frozen_string_literal: true

class CreateBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :blocks do |t|
      t.string :block
      t.references :blocking_system, foreign_key: true

      t.timestamps
    end
  end
end
