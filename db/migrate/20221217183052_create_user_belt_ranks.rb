class CreateUserBeltRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_belt_ranks do |t|
      t.references :user, foreign_key: true
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
