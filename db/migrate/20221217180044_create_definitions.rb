class CreateDefinitions < ActiveRecord::Migration[5.2]
  def change
    create_table :definitions do |t|
      t.string :definition
      t.references :value, foreign_key: true

      t.timestamps
    end
  end
end
