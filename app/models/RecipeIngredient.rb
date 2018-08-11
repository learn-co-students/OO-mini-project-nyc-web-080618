class RecipeIngredient
  
  attr_accessor :ingredient
  attr_reader :recipe

  @@all = []

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

  def find_ingredient
    RecipeIngredient.all.map do |objs|
      objs.ingredient
    end
  end

  def find_recipe
    RecipeIngredient.all.map do |objs|
      objs.recipe
    end
  end

end
