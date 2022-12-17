class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column KataForm, :kata_from, :kata_form
  end
end
