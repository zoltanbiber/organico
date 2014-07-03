Given(/^that we have at least ten shops in the database$/) do
  12.times do
    Shop.create!(
      name: "Mr O's Organic Emporium", 
      opening_hours: Faker::Lorem.sentence, 
      email: "shop@shop.org", 
      phone: Faker::PhoneNumber.phone_number, 
      website: Faker::Internet.url, 
      address_city: "London",
      address_street: Faker::Address.street_address,
      address_secondary: Faker::Address.secondary_address,
      address_building: Faker::Address.building_number,
      address_postcode: Faker::Address.postcode,
      address_state: Faker::Address.state,
      address_country: "United Kingdom",
      address_latitude: Faker::Address.latitude,
      address_longitude: Faker::Address.longitude,
    )
  end 
end

When(/^the user visits the homepage$/) do
  visit root_path
end

Then(/^he should see the first ten shops on the page$/) do
  expect(page).to have_content "Mr O's Organic Emporium"
  expect(page).to have_content 'London'
end
