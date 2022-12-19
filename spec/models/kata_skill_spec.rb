# frozen_string_literal: true

require 'rails_helper'

RSpec.describe KataSkill, type: :model do
  it { should belong_to :kata_skill_level }
end
