When(/^the user is on the homepage$/) do
  visit root_path
end

When(/^he clicks on the VIEW button next to a shop's name$/) do
  save_and_open_page
  click_on 'VIEW'
end

Then(/^he is taken to that shop's profile page$/) do
  visit shop_path(Shop.last.id)
end

Then(/^he can see all the information about that shop$/) do
  expect(page).to have_content "Mr O's Organic Emporium"
  expect(page).to have_content "monday-friday: 08:00-20:00, saturday: 10:00-18:00, sunday: closed"
  expect(page).to have_content "020 4545 3333"
  expect(page).to have_content "www.mrorganic.com"
  expect(page).to have_content "restaurant"
  expect(page).to have_content "bar"
  expect(page).to have_content "deli"
end