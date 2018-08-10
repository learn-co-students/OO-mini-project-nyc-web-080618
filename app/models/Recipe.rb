class Recipe

  @@all = []

  attr_reader :name

  def initialize(name, *ings)
    @name = name
    @ings = ings
    @@all << self
  end

  def self.all
    @@all
  end # self.all

  def self.most_popular

  end #self.most_popular

  def users
    recipes = RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
    recipes.map do |recipe_card|
      recipe_card.user
    end
  end # users

  def ingredients
    @ings.map do |ing|
      ing
    end.flatten
  end # ingredients

  def allergens
    users.map do |user|
      user.allergens.map do |allergen|
        allergen.ingredient
      end
    end.flatten
  end # allergens

  def add_ingredients(ingredient_arr)
    ingredient_arr.each do |ingredient|
      @ings << ingredient
    end
  end # add_ingredients

end # Recipe
