# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BlockingSystem, type: :model do
  it { should have_many :blocks }
  it { should belong_to :belt_rank }
end
