require "pry"

class User

attr_reader :name, :allergen

@@all = []

def initialize(name)
  @name = name
  @@all << self
end


# User.all should return all of the user instances
def self.all
  @@all
end # end of self.all user class method


# should return all of the recipes this user has recipe cards for
def recipes
  recipes_arr = RecipeCard.all.select do |recipe_card_ob|
    #binding.pry
     recipe_card_ob.user == self
  end
    recipes_arr.map do |user_ob|
      user_ob.recipe.name
    end.flatten
end # end of recipes instance method


# should accept a recipe instance as an argument as well as a date and rating,
# and create a new recipe card for this user and the given recipe
def add_recipe_card(recipe, date, rating)
  RecipeCard.new(recipe, self, date, rating)
  # binding.pry
  # to test this pry - call this method on an instance of a User
  # IE - parker.add_recipe_card(taco, "Aug 9", 2)
end # end of add_recipe_card instance method


# should accept an ingredient instance as an argument
# and create a new allergen instance for this user and the given ingredient
def declare_allergen(allergen, ingredient)
  Allergen.new(allergen, ingredient, self)
end # end declare_allergen instance method


# should return all of the ingredients this user is allergic to
def allergens
  allergy_arry = Allergen.all.select do |allergen_ob|
    #binding.pry
      allergen_ob.user == self
  end
  allergy_arry.map do |user_ob|
    user_ob.allergen
  end
end # end of allergens instance method


# should return the top three highest rated recipes for this user
def top_three_recipes
  top_recipes_arr = RecipeCard.all.select do |recipe_card_ob|
    #binding.pry
     recipe_card_ob.user == self
  end
  top_recipes_arr.sort do |highest, lowest|
    highest.rating <=> lowest.rating
  end
   top_recipes_arr[0..2]
end # end of top_three_recipes instance method


# should return the recipe most recently added to the user's cookbook
def most_recent_recipe
  recent_arr = RecipeCard.all.select do |recipe_card_ob|
    #binding.pry
      recipe_card_ob.user == self
  end
  recent_arr.sort do |present, past|
    present.date <=> past.date
  end
  recent_arr[0]
end # end of most_recent_recipe instance method












end #End of User Class
