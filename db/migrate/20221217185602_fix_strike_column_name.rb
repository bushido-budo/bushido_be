class FixStrikeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column Strike, :type, :strike_type
  end
end
