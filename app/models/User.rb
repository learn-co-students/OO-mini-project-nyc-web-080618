class User

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end # self.all

  def recipes
    RecipeCard.all.select do |user_card|
      user_card.user == self
    end # RecipeCard.all.select
  end # recipes

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, rating, self, recipe)
  end # add_recipe_card

  def declare_allergen(ingredient)
    Allergen.new(ingredient)
  end # declare_allergen

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient.user == self
    end
  end # allergens

  def top_three_recipes
    sorted_recipes = recipes.sort do |left, right|
      right.rating <=> left.rating
    end
    sorted_recipes[0..2]
  end # top_three_recipes

  def most_recent_recipe
    sorted_recipes = recipes.sort do |left, right|
      right.date <=> left.date
    end
    sorted_recipes[0]
  end # most_recent_recipe

  # def safe_recipes
  #
  # end # safe_recipes

end # User
