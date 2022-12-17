# frozen_string_literal: true

FactoryBot.define do
  factory :block do
    block { 'MyString' }
    blocking_system { nil }
  end
end
