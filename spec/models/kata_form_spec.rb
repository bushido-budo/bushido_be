# frozen_string_literal: true

require 'rails_helper'

RSpec.describe KataForm, type: :model do
  it { should belong_to :belt_rank }
end
