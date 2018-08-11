class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, date, rating)
  end

  def top_three_recipes
    RecipeCard.all.sort_by do |recipecard|
      recipecard.rating
    end
    .reverse[0..2]
  end

  def most_recent_recipes
    RecipeCard.all.sort_by do |recipecard|
      recipecard.date
    end
    .reverse[0]
  end

  def allergen
    arr = Allergen.all.select {|user| user.user == self}.uniq
    arr.map {|user| user.ingredient  }
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end


  def safe_recipes
    i = 0
    while i < self.allergen.length
    recipe_ingredient = RecipeIngredient.all.select{|recipe| recipe.ingredient != self.allergen[i]}
    i += 1
    end
    recipe_ingredient.map {|ok| ok.recipe}
  end

end
