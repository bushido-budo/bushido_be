class CreateStances < ActiveRecord::Migration[5.2]
  def change
    create_table :stances do |t|
      t.string :stance
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
