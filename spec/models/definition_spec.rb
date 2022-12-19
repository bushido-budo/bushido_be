# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Definition, type: :model do
  it { should belong_to :value }
end
