class CreateKicks < ActiveRecord::Migration[5.2]
  def change
    create_table :kicks do |t|
      t.string :kick
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
