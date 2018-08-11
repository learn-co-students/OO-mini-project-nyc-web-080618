require "pry"

class User
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def get_recipe_card
    RecipeCard.all.select do |card|
      card.user == self
    end
  end

  def recipes
    array = []
    get_recipe_card.each do |card|
      array << card.recipe
    end
    array
end

def add_recipe_card(recipe_instance, date, rating)
  RecipeCard.new(self, recipe_instance, date, rating)
end

def declare_allergen(ingredint_instance)
  Allergen.new(self, ingredint_instance)
end
def get_allergens
  Allergen.all.select do |allergen|
    allergen.user == self
end
end

def allergens
  array = []
  get_allergens.each do |allergen|
    array << allergen.ingredient.name
  end
  array
end

def top_three_recipes_card
array =  get_recipe_card.sort do |a, b|
  b.rating <=> a.rating
  end
array.slice(0, 3)
end

def top_three_recipes
  array = []
  top_three_recipes_card.each do |recipe_card|
    array << recipe_card.recipe
  end
  array
  end

def most_recent_recipe
 array = []
 get_recipe_card[-1].recipe.name.each do |ingredient|
 array << ingredient.name
end
array
end
end
