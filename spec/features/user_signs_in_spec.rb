require 'spec_helper'

feature 'user signs in' do
  let(:user) { FactoryGirl.create(:user) }
  scenario 'exisiting user signs in with valid information' do
    visit root_path
    click_on 'Sign In'
    fill_in 'Username', with: user.username
    fill_in 'Password', with: user.password
    click_button 'Sign In'
    expect(page).to have_content 'Welcome back'
  end

  scenario 'exisiting user attempts to sign in with invalid information' do
    visit root_path
    click_on 'Sign In'
    click_button 'Sign In'
    expect(page).to have_content 'Invalid login or password.'
  end
end
