# frozen_string_literal: true

class BlockingSystem < ApplicationRecord
  belongs_to :belt_rank
  has_many :blocks
end
