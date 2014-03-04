require 'spec_helper'

describe CountryArmy do
  it { should validate_presence_of :country }
  it { should validate_presence_of :user }
  it { should validate_presence_of :age }
  it { should belong_to :country }
  it { should belong_to :user }
end
