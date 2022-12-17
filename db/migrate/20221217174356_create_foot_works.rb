class CreateFootWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :foot_works do |t|
      t.string :foot_work
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
