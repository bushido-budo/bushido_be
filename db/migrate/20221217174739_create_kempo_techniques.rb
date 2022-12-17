class CreateKempoTechniques < ActiveRecord::Migration[5.2]
  def change
    create_table :kempo_techniques do |t|
      t.string :kempo_technique
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
