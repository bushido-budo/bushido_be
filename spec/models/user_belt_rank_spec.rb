# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserBeltRank, type: :model do
  it { should belong_to :belt_rank }
  it { should belong_to :user }
end
