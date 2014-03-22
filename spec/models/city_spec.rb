require 'spec_helper'

describe City do
  it { should belong_to :country }
  it { should have_valid(:name).when('Taco', 'Berlin') }
  it { should_not have_valid(:name).when(nil, '') }
  it { should validate_presence_of :country }
  it { should have_many :users }

  it "should have capital city default to false" do
    city = FactoryGirl.create(:city)

    expect(city.capital_city).to be_false
  end
end
