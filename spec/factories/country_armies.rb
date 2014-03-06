FactoryGirl.define do
  factory :country_army do
    association :user
    association :country
    age 1
  end
end
