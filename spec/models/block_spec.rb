# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Block, type: :model do
  it { should belong_to :blocking_system }
end
