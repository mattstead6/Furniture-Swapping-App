puts "🌱 Seeding spices..."

User.destroy_all

u1 = User.create!(full_name: "Matt Stead", location: "East Village, NY, 10009", bio: "Looking for bright pink sofas!")
u2 = User.create!(full_name: "Kristen Cadacio", location: "Astoria, NY, 10098", bio: "All I want is a desk")
u3 = User.create!(full_name: "Thomas Fern", location: "Williamsburg, NY, 10909", bio: "I love plants!")
u4 = User.create!(full_name: "Robert McDaniels", location: "Bellevue Hill, SC, 80009", bio: "Looking for vintage furniture")
u5 = User.create!(full_name: "Timothy Frankenstern", location: "Park Slope, NY, 10087", bio: "I like to flip furniture")
u6 = User.create!(full_name: "De'Anthony Dougle", location: "Woodstock, NY, 20009", bio: "College student broke as fuck need cheap shit")
u7 = User.create!(full_name: "Samantha Smith", location: "Syracuse, NY, 10097", bio: "Saving the enivornment one furniture at a time")
u8 = User.create!(full_name: "Gabriella Martini", location: "Lebanon, NY, 20837", bio: "Moved into a new apartment, need cool furniture")


Item.create!(item_name: "Sofa", description: "My bright pink sofa", original_pricing: 1000, condition: 8, image_url: "https://cb2.scene7.com/is/image/CB2/GPCurvoPnkVlvtSfNvPnkSHF18_1x1/$web_pdp_main_carousel_sm$/190905023647/curvo-pink-velvet-sofa.jpg", user: User.all.sample)
Item.create!(item_name: "Chair", description: "2 beautiful wooden chairs from target", original_pricing: 80, condition: 6, image_url: "https://target.scene7.com/is/image/Target/GUEST_ab049d96-aa67-4df8-bac7-ec0819902fbc?wid=488&hei=488&fmt=pjpeg", user: User.all.sample)
Item.create!(item_name: "Microwave", description: "Cute, brand new (unused) pink Samsung microwave", original_pricing: 260, condition: 10, image_url: "https://images.samsung.com/is/image/samsung/sg-ms30-mw5000t-ms30t5018ap-sp-frontpink-225881093?$2160_1728_PNG$", user: User.all.sample)
Item.create!(item_name: "Set of Fake Candles", description: "Fake candles", original_pricing: 50, condition: 8, image_url: "https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202209/0814/premium-flickering-flameless-wax-pillar-candles-c.jpg", user: User.all.sample)
Item.create!(item_name: "Outdoor Patio Furniture", description: "Really cool table and chairs for your backyard parties!", original_pricing: 2500, condition: 6, image_url: "https://images.furnituredealer.net/img/dealer/37/upload/outdoor/grandmoore-outdoor-sofa-furniture-belfort-furniture.jpg", user: User.all.sample)
Item.create!(item_name: "Table", description: "Worn down wooden table, still in good use", original_pricing: 400, condition: 4, image_url: "https://www.songbirdblog.com/wp-content/uploads/outdoor-table-makeover-before-1.jpg", user: User.all.sample)
Item.create!(item_name: "West Elm Chairs", description: "Nice bright velvety green dining room chairs", original_pricing: 450, condition: 7, image_url: "https://assets.weimgs.com/weimgs/rk/images/wcm/products/202211/0121/img24c.jpg", user: User.all.sample)
Item.create!(item_name: "Air Fryer", description: "An extra air fryer selling for cheap - not used", original_pricing: 25, condition: 10, image_url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6471/6471352cv14d.jpg", user: User.all.sample)
Item.create!(item_name: "Ikea Bed", description: "Average ikea bed", original_pricing: 250, condition: 6, image_url: "https://www.ikea.com/us/en/images/products/slattum-upholstered-bed-frame-knisa-light-gray__0726726_pe735401_s5.jpg?f=s", user: User.all.sample)
Item.create!(item_name: "Stool", description: "4 wooden stools", original_pricing: 40, condition: 5, image_url: "https://www.stickley.com/wp-content/uploads/2020/01/p_9953-C-WNT_CounterStool_w_s_.jpg", user: User.all.sample)
Item.create!(item_name: "Desk", description: "Slightly used desk, still works", original_pricing: 250, condition: 9, image_url: "https://pyxis.nymag.com/v1/imgs/dd5/c89/a9b576bce60fbd4b1eec939e4860d0b380-680b6a2aaeb898f0c0cd2ab5162b14880a71e321.2x.rsocial.w600.jpg", user: User.all.sample)
Item.create!(item_name: "Bookcase", description: "Great bookcase can hold all your shit", original_pricing: 50, condition: 7, image_url: "https://m.media-amazon.com/images/I/6154Iu5ac+L._AC_SL1000_.jpg", user: User.all.sample)

puts "✅ Done seeding!"


# 10.times do
# User.create!(
#     full_name:Faker::Name.name,
#     location:Faker::Nation.capital_city,
#     bio:Faker::Hipster.sentence
# )
# end

# create_table "items", force: :cascade do |t|
#     t.string "type"
#     t.string "description"
#     t.integer "original_pricing"
#     t.integer "condition"
#     t.string "image_url"
#     t.integer "user_id"
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "full_name"
#     t.string "location"
#     t.string "bio"
#   end