FactoryGirl.define do
  factory :city do
    sequence(:name) { |n| "City #{n} Name"}
    association :country

    capital_city false
  end
end
