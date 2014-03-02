module AuthenticationHelper
  def sign_in_as(user)
    visit root_path
    click_on "sign_in"
    fill_in 'Username', with: user.username
    fill_in 'Password', with: user.password
    click_button 'Sign In'
  end
end
