# frozen_string_literal: true

class CreateKataSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :kata_skills do |t|
      t.string :kata_skill
      t.references :kata_skill_level, foreign_key: true

      t.timestamps
    end
  end
end
