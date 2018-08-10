require_relative '../config/environment.rb'

caramel_recipe = Recipe.new("caramel")
mocha_recipe = Recipe.new("mocha")
salt_recipe = Recipe.new("salt")

jesse = User.new("jesse")
david = User.new("david")
johnny = User.new("johnny")

ing1 = Ingredient.new("coacoa powder", david)
ing2 = Ingredient.new("salt", jesse)
ing3 = Ingredient.new("water", david)
ing4 = Ingredient.new("pepper", jesse)
choc_recipe = Recipe.new("chocolate", [ing1, ing2])

ri1 = RecipeIngredient.new(ing1, choc_recipe)
ri2 = RecipeIngredient.new(ing1, caramel_recipe)
ri3 = RecipeIngredient.new(ing2, salt_recipe)
# choc_recipe.add_ingredients([ing3, ing4])

al1 = Allergen.new(ing1)
al2 = Allergen.new(ing2)

choc1 = RecipeCard.new("8/10", 5, jesse, choc_recipe)
choc2 = RecipeCard.new("8/11", 6, david, choc_recipe)
chcoc3 = RecipeCard.new("8/12", 7, johnny, choc_recipe)
caramel_boi = RecipeCard.new("8/13", 8, jesse, caramel_recipe)
mocha_boi = RecipeCard.new("8/20", 9, david, mocha_recipe)
salt_boi = RecipeCard.new("8/19", 3, david, salt_recipe)
cara_boi = RecipeCard.new("8/14", 10, david, caramel_recipe)

binding.pry
