FactoryGirl.define do
  factory :country do
    sequence(:name) {|n| "coun#{n}try"}

    factory :country_with_capital do
      after(:create) do |country|
        FactoryGirl.create(:city, country: country, capital_city: true)
      end
    end
  end
end
