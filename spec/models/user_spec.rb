require 'spec_helper'

describe User do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :username }
  it { should have_many(:countries).through(:country_armies) }
  it { should have_many(:country_armies) }

  it "should find the users current country" do
    country_army = FactoryGirl.create(:country_army)
    user = country_army.user
    country = country_army.country

    expect(user.current_country).to eql(country)
  end
end
