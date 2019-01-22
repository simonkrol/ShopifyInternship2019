# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create(title: 'Product 1', price: 4.99, inventory_count: 25)
Product.create(title: 'Product 2', price: 8.99, inventory_count: 15)
Product.create(title: 'Product 3', price: 44.99, inventory_count: 1)
Product.create(title: 'Product 4', price: 14.99, inventory_count: 0)
Product.create(title: 'Product 5', price: 3.99, inventory_count: 0)
Product.create(title: 'Product 6', price: 23.87, inventory_count: 5)
Product.create(title: 'Product 7', price: 102.99, inventory_count: 1)
Product.create(title: 'Product 8', price: 77.99, inventory_count: 0)
Product.create(title: 'Product 9', price: 0.99, inventory_count: 12)
Product.create(title: 'Product 10', price: 1.99, inventory_count: 86)
