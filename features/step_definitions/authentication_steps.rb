Given('I visit the homepage') do
  visit root_path
end

When('I fill up the sign up form') do
  click_link "Sign up"

  fill_in "user_email", :with => "tester@testdomain.test"
  fill_in "user_password", :with => "pa$$word"
  fill_in "user_password_confirmation", :with => "pa$$word"
  click_button "Sign up"
end

Given('I confirm my email') do
  open_email("tester@testdomain.test")
  visit_in_email("Confirm my account")
end

Then('I should see that my account is confirmed') do
  message = "Your email address has been successfully confirmed"

  expect(page).to have_content(message)
end

Given('I am a registered user') do
<<<<<<< HEAD
  @@registered_user = FactoryBot.create(:user, :email => "tester@testdomain.test", :password => "pa$$word")
end

When('I fill in the login form') do
  fill_in "user_email", :with => "tester@testdomain.test"
  fill_in "user_password", :with => "pa$$word"

  click_button "Log in"
end

Then('I should be logged in') do
  expect(page).to have_content("Signed in successfully")
end

Given('I am logged in') do
  visit root_path
  fill_in "user_email", :with => "tester@testdomain.test"
  fill_in "user_password", :with => "pa$$word"

  click_button "Log in"
end

When('I click on the logout button') do
  click_link "Sign Out"
end

Then('I should be redirected to log in page') do
  expect(page).to have_content("Log in")
=======
  pending # Write code here that turns the phrase above into concrete actions
end

When('I fill in the login form') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be logged in') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('I am logged in') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I click on the logout button') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be redirected to log in page') do
  pending # Write code here that turns the phrase above into concrete actions
>>>>>>> 0b5b20f9ddf4a59665500e2949fffb38b99493ff
end