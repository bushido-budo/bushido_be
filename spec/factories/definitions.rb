# frozen_string_literal: true

FactoryBot.define do
  factory :definition do
    definition { 'MyString' }
    value { nil }
    adult { 0 }
  end
end
