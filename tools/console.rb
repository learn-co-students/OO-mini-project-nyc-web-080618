require_relative '../config/environment.rb'
require "pry"
require_relative "../app/models/Allergen"
require_relative "../app/models/Ingredient"
require_relative "../app/models/Recipe"
require_relative "../app/models/RecipeCard"
require_relative "../app/models/RecipeIngredient"
require_relative "../app/models/User"

#Ingredient
sugar = Ingredient.new("sugar")
salt = Ingredient.new("salt")
flour = Ingredient.new("flour")
soy_sauce = Ingredient.new("soy_sauce")

#Recipe
cake = Recipe.new([sugar, salt])
soda = Recipe.new([sugar, soy_sauce])
noodle = Recipe.new([salt, flour])
#Users
johnny = User.new("Johnny")
david = User.new("David")
lisa = User.new("Lisa")

# RecipeCard

card1 = RecipeCard.new(johnny, soda, "3/4/2018", 7)
card2 = RecipeCard.new(david, cake, "4/5/2018", 3)
card3 = RecipeCard.new(lisa, noodle, "7/2/2018", 4)
card4 = RecipeCard.new(johnny, noodle, "7/2/2018", 8)
card5 = RecipeCard.new(johnny, noodle, "7/2/2018", 9)
card6 = RecipeCard.new(johnny, noodle, "7/2/2018", 10)
 #RecipeIngredient
ri1 = RecipeIngredient.new(sugar, soda)
ri2 = RecipeIngredient.new(flour, noodle)
ri3 = RecipeIngredient.new(salt, cake)

# Allergen

a1 = Allergen.new(johnny, sugar)
a2 = Allergen.new(david, salt)
a3 = Allergen.new(lisa, flour)
a4 = Allergen.new(david, sugar)
a5 = Allergen.new(david, flour)
a6 = Allergen.new(lisa, flour)
a7 = Allergen.new(johnny, flour)

binding.pry
