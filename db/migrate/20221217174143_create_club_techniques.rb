class CreateClubTechniques < ActiveRecord::Migration[5.2]
  def change
    create_table :club_techniques do |t|
      t.string :club_technique
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
