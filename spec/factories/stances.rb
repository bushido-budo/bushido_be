# frozen_string_literal: true

FactoryBot.define do
  factory :stance do
    stance { 'MyString' }
    belt_rank { nil }
  end
end
