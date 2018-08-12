require "pry"

class RecipeIngredient

attr_accessor :ingredient
attr_reader :recipe

@@all = []

def initialize(recipe, ingredient)
  @recipe = recipe
  @ingredient = ingredient
  @@all << self
end

def self.all
  @@all
end # end of self.all RecipeIngredient Class method


# should return the ingredient instance
def ingredient
  RecipeIngredient.all.map do |recipe_ingredient_ob|
    #binding.pry
      recipe_ingredient_ob
  end
end # end of ingredient RecipeIngredient instance method


#  should return the recipe instance
def recipe
  RecipeIngredient.all.map do |recipe_ingredient_ob|
    #binding.pry
      recipe_ingredient_ob
  end
end # end of recipe instance method

end # End of RecipeIngredient Class
