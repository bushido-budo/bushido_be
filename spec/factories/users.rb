# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.free_email }
    password { 'password' }
    address { Faker::Address.full_address }
    user_status { rand(0..1) }
  end
end
