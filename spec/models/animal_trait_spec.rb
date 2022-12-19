# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AnimalTrait, type: :model do
  it { should belong_to :shaolin_animal }
end
