feature "Users signs up" do
  scenario "Happy Path, Sign Up and subsequent Sign In" do
    visit '/'
    click_link "Sign Up!"
    fill_in "Email", with: "matt@example.com"
    fill_in "Password", with: "password1"
    fill_in "Password confirmation", with: "password1"
    click_on('Sign up')
    page.should have_content("Welcome matt@example.com!")
    page.should_not have_content("Sign Up!")
    page.should_not have_content("Sign In")
  end

  scenario "Skipped email and password" do
    visit '/'
    click_link "Sign Up!"
    click_on('Sign up')
    page.should have_content("Email can't be blank")
    page.should have_content("Password can't be blank")
  end
end