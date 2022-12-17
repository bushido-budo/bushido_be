# frozen_string_literal: true

FactoryBot.define do
  factory :strike do
    strike_name { 'MyString' }
    type { '' }
    belt_rank { nil }
  end
end
