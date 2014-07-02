Given(/^that a user is on the registration page$/) do
  visit new_user_registration_path
end

When(/^a user chooses to be a shopper$/) do
  select('shopper', :from => 'user-type-select-box')
end

When(/^the user completes the form with valid shopper information$/) do
  fill_in 'Email', :with => 'shopper@shopper.org'
  fill_in 'Password', :with => 'password'
  fill_in 'Password confirmation', :with => 'password'
  fill_in 'Username', :with => 'username'
  click_button('Sign up')
end

Then(/^the shopper's account should be created$/) do
  page.should have_content('Welcome! You have signed up successfully.')
  User.first.email.should eq("shopper@shopper.org")
end

Then(/^their user type \(shopper\) should be recorded$/) do
  User.first.type == 'shopper' 
end

When(/^a user chooses to be a merchant$/) do
  select('merchant', :from => 'user-type-select-box')
end

When(/^the user completes the form with valid merchant information$/) do
  fill_in 'Email', :with => 'merchant@merchant.org'
  fill_in 'Password', :with => 'password'
  fill_in 'Password confirmation', :with => 'password'
  fill_in 'Company name', :with => Faker::Company.name
  click_button('Sign up')
end

Then(/^the merchant's should be created$/) do
  page.should have_content('Welcome! You have signed up successfully.')
  User.first.email.should eq("merchant@merchant.org")
end

Then(/^their user type \(merchant\) should be recorded$/) do
  User.first.type == 'merchant' 
end