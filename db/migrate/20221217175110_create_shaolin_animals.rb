class CreateShaolinAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :shaolin_animals do |t|
      t.string :animal

      t.timestamps
    end
  end
end
