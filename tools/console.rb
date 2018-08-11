require_relative '../config/environment.rb'


recipe1 = Recipe.new("Recipe1")
recipe2 = Recipe.new("Recipe2")
recipe3 = Recipe.new("Recipe3")

user1 = User.new("User1")
user2 = User.new("User2")
user3 = User.new("User3")

recipe_card1 = RecipeCard.new(user1, recipe2, 20180703, 3)
recipe_card2 = RecipeCard.new(user3, recipe1, 20170519, 4)
recipe_card3 = RecipeCard.new(user2, recipe2, 20160223, 5)
recipe_card4 = RecipeCard.new(user3, recipe3, 20150802, 4)
recipe_card5 = RecipeCard.new(user1, recipe1, 20161203, 8)

ingredient1 = Ingredient.new("Ingredient1")
ingredient2 = Ingredient.new("Ingredient2")
ingredient3 = Ingredient.new("Ingredient3")

recipe_ingredient1 = RecipeIngredient.new(recipe2, ingredient1)
recipe_ingredient2 = RecipeIngredient.new(recipe3, ingredient2)
recipe_ingredient3 = RecipeIngredient.new(recipe1, ingredient3)
recipe_ingredient4 = RecipeIngredient.new(recipe1, ingredient2)
recipe_ingredient5 = RecipeIngredient.new(recipe1, ingredient1)

allergen1 = Allergen.new(user1, ingredient1)
allergen3 = Allergen.new(user3, ingredient3)
allergen4 = Allergen.new(user2, ingredient3)
allergen5 = Allergen.new(user3, ingredient1)
allergen6 = Allergen.new(user2, ingredient3)


ingreds = [ingredient1, ingredient2, ingredient3]

binding.pry
