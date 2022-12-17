# frozen_string_literal: true

class AddColumnToDefinitions < ActiveRecord::Migration[5.2]
  def change
    add_column :definitions, :adult, :integer
  end
end
