class Recipe
  attr_accessor :recipe

  @@all = []

  def initialize(recipe)
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    counter = RecipeCard.all.select{|recipe_card| recipe_card.recipe == self.all[0]}.length
    recipe_counter = self.all[0]
    i = 0
    while i < self.all.length
      num = RecipeCard.all.select{|recipe_card| recipe_card.recipe == self.all[i]}.length
      if num > counter
        counter = num
        recipe_counter = self.all[i]
      end
      i += 1
    end
    return recipe_counter
  end

  def users
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def ingredients
    recipe_ingredients = RecipeIngredient.all.select{|recipe| recipe.recipe == self}
    recipe_ingredients.map {|recipe_ingredient| recipe_ingredient.ingre}
  end

  def allergens
    aller = Allergen.all.map{|allergen| allergen.ingredient}
    ingredients.select {|ingredient| aller.include?(ingredient)}
  end

  def add_ingredients(ingredient)
    ingredient.each {|ing| RecipeIngredient.new(self, ing)}
  end



end #END CLASS
