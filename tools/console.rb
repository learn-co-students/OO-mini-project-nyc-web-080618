require_relative '../config/environment.rb'
# require_relative "recipe.rb"
# require_relative "user.rb"
# require_relative "recipecard.rb"
# require_relative "ingredient.rb"
# require_relative "recipeingredient.rb"
# require_relative "allergen.rb"

#users
johnny = User.new("johnny")
andrew = User.new("andrew")
arthur = User.new("arthur")

#recipes
recipe1 = Recipe.new("apple sauce")
recipe2 = Recipe.new("chicken")
recipe3 = Recipe.new("steak")
recipe4 = Recipe.new("taco")
recipe5 = Recipe.new("chips")

#RecipeCards
rc1 = RecipeCard.new(recipe1, johnny, "today", 1)
rc2 = RecipeCard.new(recipe1, andrew, "today", 2)
rc3 = RecipeCard.new(recipe2, arthur, "today", 4)
rc4 = RecipeCard.new(recipe2, johnny, "yesterday", 2)
rc5 = RecipeCard.new(recipe2, andrew, "yesterday", 8)
rc6 = RecipeCard.new(recipe3, andrew, "yesterday", 8)
rc7 = RecipeCard.new(recipe4, andrew, "yesterday", 4)
rc8 = RecipeCard.new(recipe5, andrew, "yesterday", 8)
rc9 = RecipeCard.new(recipe4, johnny, "yesterday", 6)
rc10 = RecipeCard.new(recipe5, johnny, "yesterday", 6)



#Ingredients
salt = Ingredient.new("salt")
pepper = Ingredient.new("pepper")
cumin = Ingredient.new("cumin")


#Allergens
a1 = Allergen.new(johnny, pepper)
a2 = Allergen.new(johnny, cumin)
a3 = Allergen.new(andrew, pepper)
a4 = Allergen.new(arthur, pepper)


#RecipeIngredients

ri1 = RecipeIngredient.new(salt, recipe1)
ri2 = RecipeIngredient.new(pepper, recipe1)
ri3 = RecipeIngredient.new(cumin, recipe2)
ri4 = RecipeIngredient.new(salt, recipe3)





binding.pry
