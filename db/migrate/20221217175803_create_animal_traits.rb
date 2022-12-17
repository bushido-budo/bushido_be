# frozen_string_literal: true

class CreateAnimalTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_traits do |t|
      t.string :characteristic
      t.references :shaolin_animal, foreign_key: true

      t.timestamps
    end
  end
end
