require_relative 'Recipe'
require_relative 'User'
require_relative 'Ingredient'
require_relative 'Allergen'
require_relative 'RecipeIngredient'
require_relative 'RecipeCard'
require 'pry'

chicken_noodle = Recipe.new('chicken noodle')
mike = User.new('mike')
recipe_card1 = RecipeCard.new(chicken_noodle,mike,'jan 1',5)

chicken = Ingredient.new('chicken')
turkey = Ingredient.new('turkey')
allergen1 = Allergen.new(chicken,mike)
kris = User.new('kris')
allergen2 = Allergen.new(chicken,kris)
allergen3 = Allergen.new(turkey,kris)
recipe_ingredient1 = RecipeIngredient.new(chicken,chicken_noodle)
recipe_card2 = RecipeCard.new(chicken_noodle,kris,'jan 1',5)
#recipe_card3 = RecipeCard.new(chicken_noodle,kris,'jan 2',5)

binding.pry
"test"
