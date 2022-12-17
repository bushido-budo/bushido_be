# frozen_string_literal: true

class CreateKickDefenses < ActiveRecord::Migration[5.2]
  def change
    create_table :kick_defenses do |t|
      t.string :kick_defense
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
