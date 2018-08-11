require "pry"
class Recipe

  attr_reader :name
  @@all = []
  def initialize(name)
    @name= name
    @@all << self
  end

  def self.all
    @@all
  end

  def show_card
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def self.most_popular
    Recipe.all.sort_by do |recipe|
      recipe.show_card.length
    end.last
  end

def users
  user_array = []
  self.show_card.each do |card|
    user_array << card.user
  end
  user_array
end

def ingredients
  array = []
  self.name.each do |ingred|
  array << ingred.name
 end
array
end

def ingredient_allergen
  array = []
  Allergen.all.each do |allergen|
  array <<  allergen.ingredient.name
  end
  array.uniq
end

def allergens
  self.ingredients.select do |ingred|
  ingredient_allergen.include?(ingred) == true
end
end

def add_ingredients(ingreds)
  array = self.name
  ingreds.each do |ingred|
    array << ingred
  end
  array
end

end
