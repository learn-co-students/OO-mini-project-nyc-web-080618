require_relative '../config/environment.rb'



# Recipe instances -- (name)
burrito = Recipe.new("burrito")
taco = Recipe.new("taco")
pizza = Recipe.new("pizza")
hamburger = Recipe.new("Hamburger")


#User instances -- (name)
parker1 = User.new("Parker1")
parker2 = User.new("Parker2")
parker3 = User.new("Parker3")
parker4 = User.new("Parker4")


#RecipeCard instances -- (recipe, user, date, rating)
first_card = RecipeCard.new(burrito, parker1, "Aug 11", 7)
second_card = RecipeCard.new(hamburger, parker2, "Aug 11", 8)
third_card = RecipeCard.new(taco, parker3, "Aug 12", 5)
fourth_card = RecipeCard.new(pizza, parker1, "Aug 12", 9)
fifth_card = RecipeCard.new(pizza, parker4, "Aug 10", 3)
fourth_card = RecipeCard.new(hamburger, parker1, "Aug 1", 10)
fourth_card = RecipeCard.new(pizza, parker1, "Aug 2", 9)
fourth_card = RecipeCard.new(pizza, parker1, "Aug 3", 6)


#Ingredient instances -- (name, user)
cheese = Ingredient.new("Cheese", parker1)
salsa = Ingredient.new("Salsa", parker1)
tomato = Ingredient.new("Tomato", parker3)
lettuce = Ingredient.new("Lettuce", parker4)
tortilla = Ingredient.new("Tortilla", parker2)


#RecipeIngredient instances -- (recipe, ingredient)
rec_ing1 = RecipeIngredient.new(burrito, tortilla)
rec_ing2 = RecipeIngredient.new(taco, salsa)
rec_ing3 = RecipeIngredient.new(hamburger, lettuce)
rec_ing4 = RecipeIngredient.new(taco, cheese)


#Allergen instances -- (allergen, ingredient, user)
lactose_intollerance = Allergen.new("lactose_intollerance", cheese, parker1)
salsa_intollerance = Allergen.new("salsa_intollerance", salsa, parker2)
gluten = Allergen.new("gluten", tortilla, parker1)
gluten = Allergen.new("gluten", tortilla, parker2)


binding.pry
