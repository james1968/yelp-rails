module SessionHelpers

  def sign_up(email: 'alice@example.com',
              password: '12345678',
              password_confirmation: '12345678')
    visit '/users/sign_up'
    fill_in :user_email, with: email
    fill_in :user_password, with: password
    fill_in :user_password_confirmation, with: password_confirmation
    click_button 'Sign up'
  end
end
