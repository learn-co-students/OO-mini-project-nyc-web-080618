require "pry"

class Recipe

attr_reader :name, :ingredient

@@all = []

def initialize(name)
  @name = name
  @@all << self
end


# should return all of the recipe instances
def self.all
  @@all
end # end of self.all Recipe Class method


# should return the user instances who have recipe cards with this recipe
def users
  users_arr = RecipeCard.all.select do |recipe_card_ob|
    #binding.pry
     recipe_card_ob.recipe == self
  end
    users_arr.map do |user_ob|
      #binding.pry
      user_ob.user
    end
end # end of users instance method


# should return the recipe instance with the highest number of users
# aka the recipe that has the most recipe cards
def self.most_popular
  Recipe.all.sort_by do |recipe_ob|
    recipe_ob.popular_recipe_card.length
  end.last
end # end of most_popular Recipe Class method

# Helper Method for self.most_popular
def popular_recipe_card
  RecipeCard.all.select do |recipe_card_ob|
    #binding.pry
    # to test this pry - call this method on an instance of a Recipe
    #(IE - taco.popular_recipe_card)
    recipe_card_ob.recipe == self
  end
end # end of popular_recipe_card Recipe instance method


# should return all of the ingredients in this recipe
def ingredients
  rec_ing_arr = RecipeIngredient.all.select do |recipe_ingredient_ob|
    #binding.pry
      recipe_ingredient_ob.recipe == self
    end
  rec_ing_arr.map do |recipe_ob|
    recipe_ob.ingredient
  end
end # End of ingredients instance method


# should return all of the ingredients in this recipe that are allergens
def allergens
  users.map do |user_ob|
    #binding.pry
    user_ob.allergens.each do |allergen_ob|
      #binding.pry
        allergen_ob
    end
  end.flatten
end # end of allergens instance method


# should take an array of ingredient instances as an argument,
# and associate each of those ingredients with this recipe
def add_ingredients(new_ingredients_arr)
  new_ingredients_arr.each do |new_ingredients|
    #binding.pry
    RecipeIngredient.new(self, new_ingredients)
  end
end # end of add_ingredients instance method

end #End of Recipe Class
#binding.pry
