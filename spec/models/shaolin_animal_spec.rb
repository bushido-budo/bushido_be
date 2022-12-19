# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ShaolinAnimal, type: :model do
  it { should have_many :animal_traits }
end
