require 'spec_helper'

describe Country do
  let(:country) { FactoryGirl.create(:country) }

  it { should validate_presence_of :name }

  it { should have_many(:users).through(:country_armies) }
  it { should have_many(:country_armies) }
  it { should respond_to(:invite_token) }
  it "generates a random invite token sequence on creation" do
    expect(country.invite_token.length).to eql(10)
  end

  it "should have a capital city" do
    expect(country.capital_city).to be_instance_of City
  end
end
