# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BeltRank, type: :model do
  it { should have_many :user_belt_ranks }
end
