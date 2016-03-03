# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




puts "going to seed"


cocktails = Cocktail.create(name: "Cocont")
cocktails = Cocktail.create(name: "Coonut")
cocktails = Cocktail.create(name: "Conut")


ingredients = Ingredient.create(name: "Apple")
ingredients = Ingredient.create(name: "Orange")
ingredients = Ingredient.create(name: "Tree")
ingredients = Ingredient.create(name: "Pineapple")
ingredients = Ingredient.create(name: "Coke")
ingredients = Ingredient.create(name: "Rum")
ingredients = Ingredient.create(name: "Apple")

puts " finished seeding"
