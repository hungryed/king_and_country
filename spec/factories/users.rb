# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:first_name) {|n| "J#{n}e"}
    sequence(:last_name) {|n| "Sm#{n}th"}
    sequence(:username) {|n| "j#{n}banana"}
    sequence(:email) { |n| "j#{n}bana@banana.com"}
    password 'password'
    password_confirmation 'password'
  end
end
