require 'spec_helper'

feature 'user changes their password' do
  let!(:user) { FactoryGirl.create(:user) }

  scenario 'user only sees edit profile page when signed in' do
    visit root_path
    expect(page).to_not have_content 'My Profile'
    sign_in_as(user)
    expect(page).to have_content 'My Profile'
  end

  scenario 'exisiting user changes their password' do
    sign_in_as(user)
    click_on 'my_profile'
    click_on 'edit_profile'
    fill_in 'user_password', with: user.password
    fill_in 'Password confirmation', with: user.password
    fill_in 'Current password', with: user.password
    click_button 'Update'
    expect(page).to have_content 'You updated your account successfully.'
  end
end
