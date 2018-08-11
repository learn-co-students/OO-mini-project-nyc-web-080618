require "pry"

class RecipeIngredient

attr_reader :ingredient, :recipe

@@all = []

def initialize(ingredient, recipe)
  @ingredient = ingredient
  @recipe = recipe
  @@all << self
end

def self.all
  @@all
end

def ingredient_entry
  self.ingredient
end

def recipe_entry
self.recipe
end
end
