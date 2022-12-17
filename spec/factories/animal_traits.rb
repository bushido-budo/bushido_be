# frozen_string_literal: true

FactoryBot.define do
  factory :animal_trait do
    characteristic { 'MyString' }
    shaolin_animal { nil }
  end
end
