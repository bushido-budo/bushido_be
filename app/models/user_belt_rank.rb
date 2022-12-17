class UserBeltRank < ApplicationRecord
  belongs_to :user
  belongs_to :belt_rank
end
