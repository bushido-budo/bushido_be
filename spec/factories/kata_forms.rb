# frozen_string_literal: true

FactoryBot.define do
  factory :kata_form do
    kata_from { 'MyString' }
    belt_rank { nil }
  end
end
