# frozen_string_literal: true

class CreateKataSkillLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :kata_skill_levels do |t|
      t.string :kata_skill_level
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
