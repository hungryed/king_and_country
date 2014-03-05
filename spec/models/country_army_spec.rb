require 'spec_helper'

describe CountryArmy do
  it { should validate_presence_of :country }
  it { should validate_presence_of :user }
  it { should validate_presence_of :age }
  it { should belong_to :country }
  it { should belong_to :user }
  it "should define the current age" do
    age = 1
    expect(CountryArmy.current_age).to eql(age)
  end
end
