# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Value, type: :model do
  it { should have_many :definitions }
end
