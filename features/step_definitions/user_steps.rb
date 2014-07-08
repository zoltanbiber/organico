Given(/^that we have a logged\-in user of type merchant$/) do
  visit new_user_registration_path
  select('Merchant', :from => 'user_type')
  fill_in 'Username', :with => 'Mr Merchant'
  fill_in 'Company name', :with => "The Organic Emporium"
  fill_in 'Email', :with => 'merchant@goodbuy.co.uk'
  fill_in 'Password', :with => 'password'
  fill_in 'Password confirmation', :with => 'password'
  click_button('Sign up')
end

When(/^the merchant clicks on profile navigation link$/) do
  click_on("profile")
end

Then(/^he is taken to his profile page$/) do
  visit user_path(User.last.id)
end

Then(/^he can see his details$/) do
  expect(page).to have_content 'Username'
  expect(page).to have_content 'Mr Merchant'
  expect(page).to have_content 'Company Name'
  expect(page).to have_content 'The Organic Emporium'
  expect(page).to have_content 'merchant@goodbuy.co.uk'
  expect(page).to have_content 'Password'
end