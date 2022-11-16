FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    password { "MyString" }
    address { "MyString" }
    user_status { 1 }
  end
end
