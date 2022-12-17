class CreateGrabDefenses < ActiveRecord::Migration[5.2]
  def change
    create_table :grab_defenses do |t|
      t.string :grab_defense
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
