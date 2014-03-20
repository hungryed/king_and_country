require 'spec_helper'

feature 'user goes to current city' do
  let!(:country) { FactoryGirl.create(:country_with_capital) }
  let!(:country_army) { FactoryGirl.create(:country_army, country: country) }
  let(:user) { country_army.user }

  context "authenticated user" do
    scenario 'visits city page for first time and sees capital' do
      sign_in_as(user)
      visit root_path
      click_on 'City Center'

      expect(page).to have_content country.capital_city.name
      expect(page).to have_content country.name
      expect(page).to have_content 'Train'
    end

    scenario 'visits city page and is in a city other than the capital'
  end

  context 'unauthenticated user' do
    scenario "can't see cities pages"
  end
end
