require 'spec_helper'

feature 'user joins a country' do
  let(:user) { FactoryGirl.create(:user) }
  let!(:country) { FactoryGirl.create(:country) }

  scenario 'clicks on join random' do
    sign_in_as(user)
    visit root_path
    click_on 'Join a Country'
    click_button 'Join random country'

    expect(page).to have_content "You are now part of #{country.name}"
  end

  scenario 'joins a specific country with country code'
end
