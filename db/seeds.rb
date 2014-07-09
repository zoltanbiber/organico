# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tag1 = Tag.find_or_create_by(:name => "bar")
tag2 = Tag.find_or_create_by(:name => "restaurant")
tag3 = Tag.find_or_create_by(:name => "deli")
tag4 = Tag.find_or_create_by(:name => "groceries")
tag5 = Tag.find_or_create_by(:name => "bakery")
tag6 = Tag.find_or_create_by(:name => "baking ingredients")
tag7 = Tag.find_or_create_by(:name => "meat")
tag8 = Tag.find_or_create_by(:name => "household")
tag9 = Tag.find_or_create_by(:name => "coffee")
tag10 = Tag.find_or_create_by(:name => "tea")
tag11 = Tag.find_or_create_by(:name => "fruit")
tag12 = Tag.find_or_create_by(:name => "veg")
tag13 = Tag.find_or_create_by(:name => "drinks")
tag14 = Tag.find_or_create_by(:name => "hot food")
tag15 = Tag.find_or_create_by(:name => "eggs")
tag16 = Tag.find_or_create_by(:name => "dairy")
tag17 = Tag.find_or_create_by(:name => "vegetarian")
tag18 = Tag.find_or_create_by(:name => "webshop")
tag19 = Tag.find_or_create_by(:name => "gourmet food")
tag20 = Tag.find_or_create_by(:name => "artisan")
tag21 = Tag.find_or_create_by(:name => "home delivery")
tag22 = Tag.find_or_create_by(:name => "cosmetics")
tag23 = Tag.find_or_create_by(:name => "baby")
tag24 = Tag.find_or_create_by(:name => "sweets")

shop1 = Shop.create!(name: "Planet Organic", address_city: "London", address_street: "10 Devonshire Square", address_postcode: "EC2M 4AE", latitude: 51.516614, longitude: -0.079358, email: "hello@planetorganic.com", phone: "0208 345 4646", opening_hours: "monday-friday: 08:00 - 20:00, sat-sun: 10:00-17:00", website: "www.planetorganic.com")
shop1.tags = [tag11, tag12, tag24, tag18]
shop1.save
shop2 = Shop.create!(name: "Daylesford Organic", address_city: "London", address_street: "44b Pimlico Rd", address_postcode: "SW1W 8LP", latitude: 51.490694, longitude: -0.153452, email: "hello@daylesford.com", phone: "0207 311 9292", opening_hours: "monday-friday: 08:00 - 19:00, sat: 10:00-17:00, sun: closed", website: "www.daylesford.com")
shop2.tags = [tag7, tag15, tag16, tag21]
shop2.save
shop3 = Shop.create!(name: "Real Foods", address_city: "Edinburgh", address_street: "37 Broughton St", address_postcode: "EH1 3JU", latitude: 55.957175, longitude: -3.187894, email: "webshop@realfoods.co.uk", phone: "0131 557 1911", opening_hours: "monday-friday: 09:00 - 18:00, sat: 09:00-18:00, sun: closed", website: "www.realfoods.co.uk")
shop3.tags = [tag4, tag6, tag9, tag18]
shop3.save
shop4 = Shop.create!(name: "Elixir Juices", address_city: "London", address_street: "333 Portobello Rd", address_postcode: "W10 5SA", latitude: 51.521371, longitude: -0.210583, email: "hello@elixirjuice.co.uk", phone: "0208 333 4747", opening_hours: "monday-friday: 09:00 - 18:00, sat: 10:00-17:00, sun: closed", website: "www.elixirjuicery.com")
shop4.tags = [tag1, tag13, tag17]
shop4.save
shop5 = Shop.create!(name: "The Grocery", address_city: "London", address_street: "54-56 Kingsland Rd", address_postcode: "E2 8DP", latitude: 51.528913, longitude: -0.077664, email: "hello@thegrocery.co.uk", phone: "0207 222 1727", opening_hours: "monday-friday: 08:00 - 20:00, sat-sun: 10:00-17:00", website: "www.thegroceryshop.co.uk")
shop5.tags = [tag4, tag8, tag14, tag23]
shop5.save
shop6 = Shop.create!(name: "C. Lidgate", address_city: "London", address_street: "110 Holland Park Av", address_postcode: "W11 4UA", latitude: 51.506793599, longitude: -0.2072906, email: "info@lidgates.com", phone: "020 7727 8243", opening_hours: "monday-friday: 09:00 - 18:00, sat: 09:00-18:00, sun: closed", website: "www.lidgates.com")
shop6.tags = [tag7, tag15, tag19, tag21]
shop6.save
shop7 = Shop.create!(name: "Planet Organic", address_city: "London", address_street: "10 Devonshire Square", address_postcode: "EC2M 4AE", latitude: 51.516614, longitude: -0.079358, email: "hello@planetorganic.com", phone: "0208 345 4646", opening_hours: "monday-friday: 08:00 - 20:00, sat-sun: 10:00-17:00", website: "www.planetorganic.com")
shop7.tags = [tag7, tag15, tag16, tag21]
shop7.save
shop8 = Shop.create!(name: "Organic Trail", address_city: "Milton Keynes", address_street: "19 Regent Street", address_postcode: "MK12 3AB", latitude: 52.0406224, longitude: -0.7594171, email: "hello@organictrail.com", phone: "01582 345 3333", opening_hours: "monday-friday: 08:00 - 20:00, sat-sun: 10:00-17:00", website: "www.organictrail.co.uk")
shop8.tags = [tag4, tag6, tag9, tag18]
shop8.save
shop9 = Shop.create!(name: "Daylesford Organic", address_city: "London", address_street: "44b Pimlico Rd", address_postcode: "SW1W 8LP", latitude: 51.490694, longitude: -0.153452, email: "hello@daylesford.com", phone: "0207 311 9292", opening_hours: "monday-friday: 08:00 - 19:00, sat: 10:00-17:00, sun: closed", website: "www.daylesford.com")
shop9.tags = [tag4, tag6, tag9, tag18]
shop9.save
shop10 = Shop.create!(name: "Real Foods", address_city: "Edinburgh", address_street: "37 Broughton St", address_postcode: "EH1 3JU", latitude: 55.957175, longitude: -3.187894, email: "webshop@realfoods.co.uk", phone: "0131 557 1911", opening_hours: "monday-friday: 09:00 - 18:00, sat: 09:00-18:00, sun: closed", website: "www.realfoods.co.uk")
shop10.tags = [tag11, tag12, tag24, tag18]
shop10.save
shop11 = Shop.create!(name: "Elixir Juices", address_city: "London", address_street: "333 Portobello Rd", address_postcode: "W10 5SA", latitude: 51.521371, longitude: -0.210583, email: "hello@elixirjuice.co.uk", phone: "0208 333 4747", opening_hours: "monday-friday: 09:00 - 18:00, sat: 10:00-17:00, sun: closed", website: "www.elixirjuicery.com")
shop11.tags = [tag1, tag13, tag17]
shop11.save
shop12 = Shop.create!(name: "The Grocery", address_city: "London", address_street: "54-56 Kingsland Rd", address_postcode: "E2 8DP", latitude: 51.528913, longitude: -0.077664, email: "hello@thegrocery.co.uk", phone: "0207 222 1727", opening_hours: "monday-friday: 08:00 - 20:00, sat-sun: 10:00-17:00", website: "www.thegroceryshop.co.uk")
shop12.tags = [tag4, tag8, tag14, tag23]
shop12.save

Product.create!(shop_id: 3, name: "Rye bread (sliced) 400g", currency: "£", price: 2.50)
Product.create!(shop_id: 3, name: "12 medium eggs (free range)", currency: "£", price: 3.75)
Product.create!(shop_id: 3, name: "Cold pressed rapeseed oil 500ml (Biona)", currency: "£", price: 3.59)
Product.create!(shop_id: 3, name: "Sourdough loaf (800g)", currency: "£", price: 4.00)
Product.create!(shop_id: 3, name: "Hummus (300g tub)", currency: "£", price: 1.50)
Product.create!(shop_id: 3, name: "Chicken drumsticks (1kg, Norfolk)", currency: "£", price: 6.00)
Product.create!(shop_id: 3, name: "Greek Kalamata Green Olives (500ml jar)", currency: "£", price: 2.50)
Product.create!(shop_id: 3, name: "Red onions (1kg, UK)", currency: "£", price: 2.45)
Product.create!(shop_id: 3, name: "Broccoli (each)", currency: "£", price: 1.50)
Product.create!(shop_id: 3, name: "Pink Lady apples (1kg, Italy)", currency: "£", price: 3.50)
Product.create!(shop_id: 3, name: "Bananas (1kg)", currency: "£", price: 2.00)
Product.create!(shop_id: 3, name: "Brown rice (1kg, long grain, Italy)", currency: "£", price: 5.00)

Product.create!(shop_id: 4, name: "Rye bread (sliced) 400g", currency: "£", price: 2.50)
Product.create!(shop_id: 4, name: "12 medium eggs (free range)", currency: "£", price: 3.75)
Product.create!(shop_id: 4, name: "Cold pressed rapeseed oil 500ml (Biona)", currency: "£", price: 3.59)
Product.create!(shop_id: 4, name: "Sourdough loaf (800g)", currency: "£", price: 4.00)
Product.create!(shop_id: 4, name: "Hummus (300g tub)", currency: "£", price: 1.50)
Product.create!(shop_id: 4, name: "Chicken drumsticks (1kg, Norfolk)", currency: "£", price: 6.00)
Product.create!(shop_id: 4, name: "Greek Kalamata Green Olives (500ml jar)", currency: "£", price: 2.50)
Product.create!(shop_id: 4, name: "Red onions (1kg, UK)", currency: "£", price: 2.45)
Product.create!(shop_id: 4, name: "Broccoli (each)", currency: "£", price: 1.50)
Product.create!(shop_id: 4, name: "Pink Lady apples (1kg, Italy)", currency: "£", price: 3.50)
Product.create!(shop_id: 4, name: "Bananas (1kg)", currency: "£", price: 2.00)
Product.create!(shop_id: 4, name: "Brown rice (1kg, long grain, Italy)", currency: "£", price: 5.00)

Product.create!(shop_id: 5, name: "Rye bread (sliced) 400g", currency: "£", price: 2.50)
Product.create!(shop_id: 5, name: "12 medium eggs (free range)", currency: "£", price: 3.75)
Product.create!(shop_id: 5, name: "Cold pressed rapeseed oil 500ml (Biona)", currency: "£", price: 3.59)
Product.create!(shop_id: 5, name: "Sourdough loaf (800g)", currency: "£", price: 4.00)
Product.create!(shop_id: 5, name: "Hummus (300g tub)", currency: "£", price: 1.50)
Product.create!(shop_id: 5, name: "Chicken drumsticks (1kg, Norfolk)", currency: "£", price: 6.00)
Product.create!(shop_id: 5, name: "Greek Kalamata Green Olives (500ml jar)", currency: "£", price: 2.50)
Product.create!(shop_id: 5, name: "Red onions (1kg, UK)", currency: "£", price: 2.45)
Product.create!(shop_id: 5, name: "Broccoli (each)", currency: "£", price: 1.50)
Product.create!(shop_id: 5, name: "Pink Lady apples (1kg, Italy)", currency: "£", price: 3.50)
Product.create!(shop_id: 5, name: "Bananas (1kg)", currency: "£", price: 2.00)
Product.create!(shop_id: 5, name: "Brown rice (1kg, long grain, Italy)", currency: "£", price: 5.00)

Product.create!(shop_id: 6, name: "Rye bread (sliced) 400g", currency: "£", price: 2.50)
Product.create!(shop_id: 6, name: "12 medium eggs (free range)", currency: "£", price: 3.75)
Product.create!(shop_id: 6, name: "Cold pressed rapeseed oil 500ml (Biona)", currency: "£", price: 3.59)
Product.create!(shop_id: 6, name: "Sourdough loaf (800g)", currency: "£", price: 4.00)
Product.create!(shop_id: 6, name: "Hummus (300g tub)", currency: "£", price: 1.50)
Product.create!(shop_id: 6, name: "Chicken drumsticks (1kg, Norfolk)", currency: "£", price: 6.00)
Product.create!(shop_id: 6, name: "Greek Kalamata Green Olives (500ml jar)", currency: "£", price: 2.50)
Product.create!(shop_id: 6, name: "Red onions (1kg, UK)", currency: "£", price: 2.45)
Product.create!(shop_id: 6, name: "Broccoli (each)", currency: "£", price: 1.50)
Product.create!(shop_id: 6, name: "Pink Lady apples (1kg, Italy)", currency: "£", price: 3.50)
Product.create!(shop_id: 6, name: "Bananas (1kg)", currency: "£", price: 2.00)
Product.create!(shop_id: 6, name: "Brown rice (1kg, long grain, Italy)", currency: "£", price: 5.00)

Product.create!(shop_id: 20, name: "Rye bread (sliced) 400g", currency: "£", price: 2.50)
Product.create!(shop_id: 20, name: "12 medium eggs (free range)", currency: "£", price: 3.75)
Product.create!(shop_id: 20, name: "Cold pressed rapeseed oil 500ml (Biona)", currency: "£", price: 3.59)
Product.create!(shop_id: 20, name: "Sourdough loaf (800g)", currency: "£", price: 4.00)
Product.create!(shop_id: 20, name: "Hummus (300g tub)", currency: "£", price: 1.50)
Product.create!(shop_id: 20, name: "Chicken drumsticks (1kg, Norfolk)", currency: "£", price: 6.00)
Product.create!(shop_id: 20, name: "Greek Kalamata Green Olives (500ml jar)", currency: "£", price: 2.50)
Product.create!(shop_id: 20, name: "Red onions (1kg, UK)", currency: "£", price: 2.45)
Product.create!(shop_id: 20, name: "Broccoli (each)", currency: "£", price: 1.50)
Product.create!(shop_id: 20, name: "Pink Lady apples (1kg, Italy)", currency: "£", price: 3.50)
Product.create!(shop_id: 20, name: "Bananas (1kg)", currency: "£", price: 2.00)
Product.create!(shop_id: 20, name: "Brown rice (1kg, long grain, Italy)", currency: "£", price: 5.00)

Product.create!(shop_id: 22, name: "Rye bread (sliced) 400g", currency: "£", price: 2.50)
Product.create!(shop_id: 22, name: "12 medium eggs (free range)", currency: "£", price: 3.75)
Product.create!(shop_id: 22, name: "Cold pressed rapeseed oil 500ml (Biona)", currency: "£", price: 3.59)
Product.create!(shop_id: 22, name: "Sourdough loaf (800g)", currency: "£", price: 4.00)
Product.create!(shop_id: 22, name: "Hummus (300g tub)", currency: "£", price: 1.50)
Product.create!(shop_id: 22, name: "Chicken drumsticks (1kg, Norfolk)", currency: "£", price: 6.00)
Product.create!(shop_id: 22, name: "Greek Kalamata Green Olives (500ml jar)", currency: "£", price: 2.50)
Product.create!(shop_id: 22, name: "Red onions (1kg, UK)", currency: "£", price: 2.45)
Product.create!(shop_id: 22, name: "Broccoli (each)", currency: "£", price: 1.50)
Product.create!(shop_id: 22, name: "Pink Lady apples (1kg, Italy)", currency: "£", price: 3.50)
Product.create!(shop_id: 22, name: "Bananas (1kg)", currency: "£", price: 2.00)
Product.create!(shop_id: 22, name: "Brown rice (1kg, long grain, Italy)", currency: "£", price: 5.00)