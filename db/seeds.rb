# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new(
  name: "Costa Rica Tarrazu",
  price: 14,
  image_url: "https://www.google.com/aclk?sa=l&ai=DChcSEwjCoYiEt_XfAhUPtcAKHfU7BvUYABABGgJpbQ&sig=AOD64_2oGnOgoy3k2i5GoXF99R-kbkOHBg&ctype=5&q=&ved=0ahUKEwiFuIOEt_XfAhUDmoMKHUB2ApkQwg8IXw&adurl=",
  description: "A medium roast of the finest Costa Rican coffee from the Tarrazu region. Whole bean. The freshest quality.")
product.save
