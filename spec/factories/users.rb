# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    password_digest "MyString"
    name "MyString"
    email "MyString"
  end
end
