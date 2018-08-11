
class Recipe

  attr_reader :name

  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def self.most_popular
    user_count = { }

    self.all.each do |recipe_obj|
      user_count[recipe_obj] = recipe_obj.users.size
    end

    user_count.max_by {|recipe, count| count}[0]
  end

  def users
    user_obj_array = [ ]
    self.cards_for_recipe.each do |recipe_card|
      user_obj_array.push(recipe_card.user)
    end
    user_obj_array

  end

  def cards_for_recipe
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def ingredients

#get the recipeingredient intances for this recipe
    recipe_ingredient_objs = RecipeIngredient.all.select do |riobj|
      riobj.recipe == self
    end

#collect the ingredients from the recipeingredient
    recipe_ingredient_objs.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end


  end


  def allergens
    ingredients = RecipeIngredient.all.select do |riobj|
      riobj.recipe == self
    end

    allergens = Allergen.all.map do |allergenobj|
      allergenobj.ingredient
    end

    ingredient_array = [ ]
    ingredients.each do |ri|
      if allergens.include?(ri.ingredient) == true
        ingredient_array.push(ri.ingredient)
      end
    end

    ingredient_array

  end


  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      new_recipeingredient = RecipeIngredient.new(ingredient, self)
    end
  end






end
