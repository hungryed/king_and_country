FactoryGirl.define do
  factory :country do
    sequence(:name) {|n| "coun#{n}try"}
  end
end
