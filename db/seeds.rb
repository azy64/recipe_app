
  
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Henry", email: "henry.com", password: "kkkkkk")
User.create!(name: "Kc", email: "kc.com", password: "kkkkk")
User.create!(name: "Azaria", email: "azaria.com", password: "kkkkkk")

User.second.foods.create!(name: "Topo", measurement_unit: "grams", price: 50)
User.last.foods.create!(name: "Suluf", measurement_unit: "grams", price: 150)
User.third.foods.create!(name: "Cagana", measurement_unit: "grams", price: 590)
User.second.foods.create!(name: "Shualop", measurement_unit: "grams", price: 5900)
