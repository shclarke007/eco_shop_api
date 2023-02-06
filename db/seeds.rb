# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# db/seeds.rb


Category.destroy_all
Shop.destroy_all
Product.destroy_all

categories = [
  { name: "Category 1" },
  { name: "Category 2" },
  { name: "Category 3" }
]

categories.each do |category|
  Category.create!(category)
end

puts "Seeds for Categories created."


shops = [
  { name: "Shop A", description: "Shop A sells a variety of products." },
  { name: "Shop B", description: "Shop B is a specialty shop for unique items." },
  { name: "Shop C", description: "Shop C offers a wide range of products at affordable prices." }
]

shops.each do |shop|
  Shop.create!(shop)
end

puts "Seeds for Shops created."



products = [
  { name: "Product 1", description: "Product 1 is a great item to buy.", shop_id: Shop.first.id, category_id: Category.first.id},
  { name: "Product 2", description: "Product 2 is a must-have item.", shop_id: Shop.first.id, category_id: Category.first.id },
  { name: "Product 3", description: "Product 3 is a top-rated item.", shop_id: Shop.second.id, category_id: Category.second.id },
  { name: "Product 4", description: "Product 4 is a popular item.", shop_id: Shop.second.id, category_id: Category.second.id },
  { name: "Product 5", description: "Product 5 is a highly recommended item.", shop_id: Shop.third.id, category_id: Category.third.id },
  { name: "Product 6", description: "Product 6 is a sought-after item.", shop_id: Shop.third.id, category_id: Category.third.id }
]

products.each do |product|
  Product.create!(product)
end

puts "Seeds for Products created."
