require 'spec_helper'

describe Country do
  it { should validate_presence_of :name }

  it { should have_many(:users).through(:country_armies) }
  it { should have_many(:country_armies) }
  it { should respond_to(:invite_token) }
  it "generates a random invite token sequence on creation" do
    country = FactoryGirl.create(:country)

    expect(country.invite_token.length).to eql(10)
  end
end
