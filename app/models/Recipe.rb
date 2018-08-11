class Recipe

  attr_accessor :name, :rating, :date

  @@all = []

  def initialize(name, rating, date)
    @name = name
    @rating = rating
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def new_recipe_card(name, user)
    RecipeCard.new(name, user, self)
  end

  def my_recipe_card
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end
  end

  def self.most_popular
    Recipe.all.sort_by do |recipe|
      recipe.my_recipe_card.length
    end.last
  end
  #
  # def self.most_popular
  #   count = 0
  #   popular_recipe = nil
  #   Recipe.all.each do |recipe|
  #     if recipe.my_recipe_card.length > count
  #       popular_recipe = recipe
  #       count = recipe.my_recipe_card.length
  #     end
  #   end
  #   popular_recipe
  # end

  def users
    RecipeCard.all.map do |recipecard|
      if recipecard.recipe == self
        return recipecard.user
      end
    end
  end

  def new_reci_ingred(name, ingredient)
    new_ingredient = RecipeIngredient.new(name, self, ingredient)
  end

  def ingredients
    recipe_ingredient = RecipeIngredient.all.select do |ingredient|
      ingredient.recipe == self
    end

    recipe_ingredient.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  def allergens
    ingredient_arr = Allergen.all.map do |allergen|
      allergen.ingredient
    end

    ingredients.select do |ingredient|
      ingredient_arr.include?(ingredient)
    end
  end

  def add_ingredients(ingreds)
    ingreds.map do |ingredient|
      new_reci_ingred(ingredient.name, ingredient)
    end
  end

end #end of class

# binding.pry
