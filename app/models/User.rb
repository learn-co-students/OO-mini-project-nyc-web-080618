class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all?
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    recipe_card = RecipeCard.new(self, recipe)
    recipe_card.recipe.date = date
    recipe_card.recipe.rating = rating
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def recipes
    recipe_cards = RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end

    recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def allergens
    allergen = Allergen.all.select do |allergen|
      allergen.user == self
    end

    allergen.map do |allergen|
      allergen.ingredient
    end
  end

  def top_three_recipe
    recipes.sort_by do |recipe|
      recipe.rating
    end.last(3)
  end

  def most_recent_recipe
    recipes.sort_by do |recipe|
      recipe.date
    end.last
  end

  def safe_recipes
    recipe_ingredient = RecipeIngredient.all.select do |recipe_ingredient|
      !allergens.include?(recipe_ingredient.ingredient)
    end

    recipe_ingredient.map do |recipe_ingredient|
      recipe_ingredient.recipe
    end
  end

end #end of class
