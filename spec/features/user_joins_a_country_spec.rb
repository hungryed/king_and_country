require 'spec_helper'

feature 'user joins a country' do
  let(:user) { FactoryGirl.create(:user) }
  let!(:country) { FactoryGirl.create(:country) }

  scenario 'clicks on join random' do
    sign_in_as(user)
    visit root_path
    click_on 'Join a Country'
    select country.name, from: 'Country'
    click_on 'submit_random_country'

    expect(page).to have_content "You are now part of #{country.name}"
    expect(page).to_not have_content 'Join a Country'
    expect(page).to have_content "City Center"
  end

  scenario 'joins a specific country with country code' do
    sign_in_as(user)
    visit root_path
    click_on 'Join a Country'
    fill_in 'Country Code', with: country.invite_token
    click_on 'submit_country_code'

    expect(page).to have_content "You are now part of #{country.name}"
  end
end
