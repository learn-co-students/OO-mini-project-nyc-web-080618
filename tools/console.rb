require_relative '../config/environment.rb'

rich = User.new("Richie Rich")
olivia = User.new("Olivia")
ethan = User.new("Etheeeee")
a = User.new("abcdef")

chickensoup = Recipe.new("chickensoup")
curry_chicken = Recipe.new("Curry Chicken")
bread = Recipe.new("bread")
yogurt = Recipe.new("yogurt")

curry_recipe_r = RecipeCard.new(20140213, 7, rich, curry_chicken)
curry_recipe_o = RecipeCard.new(20170431, 10, olivia, curry_chicken)
recipecard3 = RecipeCard.new(19911013, 2, ethan, bread)
recipecard4 = RecipeCard.new(20180704, 5, a, yogurt)
bread_duplicate = RecipeCard.new(20130403, 1, olivia, bread)
curry_recipe_best = RecipeCard.new(19810328, 9, ethan, curry_chicken)

ethan.add_recipe_card(990331, 4, bread)
rich.recipes
olivia.recipes
ethan.recipes
ethan.top_three_recipes
Recipe.most_popular
bread.users

salt = Ingredient.new("salt")
chicken = Ingredient.new("chicken")
wheat = Ingredient.new("wheat")
milk = Ingredient.new("milk")
sugar = Ingredient.new("sugar")
rice = Ingredient.new("rice")

bread.add_ingredients([wheat, milk])
bread.add_ingredients([wheat, milk])
bread.add_ingredients([wheat, milk])
bread.add_ingredients([wheat, milk])
bread.add_ingredients([wheat, milk])
bread.add_ingredients([wheat, milk])











binding.pry
