class CreateKataForms < ActiveRecord::Migration[5.2]
  def change
    create_table :kata_forms do |t|
      t.string :kata_from
      t.references :belt_rank, foreign_key: true

      t.timestamps
    end
  end
end
