require 'spec_helper'

feature 'user signs up' do
  scenario 'user signs up with valid information' do
    visit root_path
    click_on 'Sign Up'
    fill_in 'First Name', with: 'Banana'
    fill_in 'Last Name', with: 'Jefferson'
    fill_in 'Username', with: 'bjeff20'
    fill_in 'Email', with: 'bjeff20@email.com'
    fill_in 'user_password', with: 'password'
    fill_in 'Password Confirmation', with: 'password'
    click_on 'Sign Up'
    expect(page).to have_content 'Signed Up successfully'
  end

  scenario 'user signs up with invalid information'
end
