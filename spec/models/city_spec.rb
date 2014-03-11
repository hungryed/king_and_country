require 'spec_helper'

describe City do
  it { should belong_to :country }
  it { should have_valid(:name).when('Taco', 'Berlin') }
  it { should_not have_valid(:name).when(nil, '') }
  it { should validate_presence_of :country }
end
