Given(/^that we have some shops in the database$/) do
  @shop = Shop.create!(
    name: "Mr O's Organic Emporium", 
    opening_hours: "monday-friday: 08:00-20:00, saturday: 10:00-18:00, sunday: closed", 
    email: "shop@shop.org", 
    phone: "020 4545 3333", 
    website: "www.mrorganic.com", 
    address_city: "London",
    address_street: Faker::Address.street_address,
    address_secondary: Faker::Address.secondary_address,
    address_building: Faker::Address.building_number,
    address_postcode: Faker::Address.postcode,
    address_state: Faker::Address.state,
    address_country: "United Kingdom",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
  )
end

Given(/^that those shops have some products$/) do
  Product.create!(shop: @shop, name: "Rye bread (sliced) 400g", currency: "£", price: 2.50)
  Product.create!(shop: @shop, name: "12 medium eggs (free range)", currency: "£", price: 3.75)
  Product.create!(shop: @shop, name: "Cold pressed rapeseed oil 500ml (Biona)", currency: "£", price: 3.59)
  Product.create!(shop: @shop, name: "Sourdough loaf (800g)", currency: "£", price: 4.00)
  Product.create!(shop: @shop, name: "Hummus (300g tub)", currency: "£", price: 1.50)
  Product.create!(shop: @shop, name: "Chicken drumsticks (1kg, Norfolk)", currency: "£", price: 6.00)
  Product.create!(shop: @shop, name: "Greek Kalamata Green Olives (500ml jar)", currency: "£", price: 2.50)
  Product.create!(shop: @shop, name: "Red onions (1kg, UK)", currency: "£", price: 2.45)
  Product.create!(shop: @shop, name: "Broccoli (each)", currency: "£", price: 1.50)
  Product.create!(shop: @shop, name: "Pink Lady apples (1kg, Italy)", currency: "£", price: 3.50)
  Product.create!(shop: @shop, name: "Bananas (1kg)", currency: "£", price: 2.00)
  Product.create!(shop: @shop, name: "Brown rice (1kg, long grain, Italy)", currency: "£", price: 5.00)
end

When(/^a user visits a shop's page$/) do
    visit shop_path(@shop.id)
end

Then(/^he should see the products sold by that shop$/) do
    expect(page).to have_content "Cold pressed rapeseed oil 500ml (Biona)"
    expect(page).to have_content "12 medium eggs (free range)"
    expect(page).to have_content "Greek Kalamata Green Olives (500ml jar)"
    expect(page).to have_content "Broccoli (each)"
end