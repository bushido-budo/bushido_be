# frozen_string_literal: true

class AddColumnsToUserBeltRank < ActiveRecord::Migration[5.2]
  def change
    add_column :user_belt_ranks, :jump_rope, :integer
    add_column :user_belt_ranks, :sit_ups, :integer
    add_column :user_belt_ranks, :balanced_kicks, :integer
    add_column :user_belt_ranks, :lunge_pumps, :integer
  end
end
