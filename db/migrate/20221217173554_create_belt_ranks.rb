class CreateBeltRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :belt_ranks do |t|
      t.string :rank

      t.timestamps
    end
  end
end
