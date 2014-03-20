FactoryGirl.define do
  factory :city do
    sequence(:name) { |n| "City #{n} Name"}
    association :country
  end
end
