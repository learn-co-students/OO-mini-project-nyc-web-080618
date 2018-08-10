class Recipe
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    #goal of this is to review all recipe recipe_card
    # and return the card with the highest number of users
    new_hash = {}
    RecipeCard.all.each do |recipe_card|
      if new_hash[recipe_card.user] == nil
        new_hash[recipe_card.user] = 1
      else
        new_hash[recipe_card.user] += 1
      end
    end
    new_hash.key(new_hash.values.max)
    #binding.pry
  end

  def users
    list_of_my_recipe_cards.map do |card|
      card.user
    end
  end

  def list_of_my_recipe_cards
    list_of_my_recipe_cards = RecipeCard.all.select do |each_card|
      each_card.recipe == self
    end
  end

  def ingredients
    my_recipe_ingredients = RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
    my_recipe_ingredients.map do |recipe_ingredient|
      my_recipe_ingredients.ingredient
    end
  end

  def allergens
    #ingredients
    Allergen.all & ingredients
  end

  def add_ingredients(ingredient_instance)
    RecipeIngredient.new(ingredient_instance,self)
  end

end
