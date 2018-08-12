class User
  attr_accessor :name
  @@all=[]

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe,date, rating)
    new = RecipeCard.new(self, recipe,date, rating)

  end

  def declare_allergen(ingredient)
    new=Allergen.new(ingredient,self)
  end

  def allergens
    array = []
    Allergen.all.each do |allergen|
      if allergen.user == self
        array << allergen.ingredient
      end
    end
    array
  end

  def top_three_recipes
    recipecard = RecipeCard.all.select do |recipecards|
      recipecards.user == self
    end
    newarray = recipecard.sort_by {|recipecard|
    recipecard.rating}
    newarray.slice(-3,3).map{|recipecard|
    recipecard.recipe}

  end

  def most_recent_recipe
    newarray = RecipeCard.all.sort_by {|recipecard|
    recipecard.date}
    newarray[-1].recipe
  end

  def recipes
    a = RecipeCard.all.select do |recipecards|
      recipecards.user == self
    end
    a.map do  |userrecipes|
      userrecipes.recipe
    end
  end

end
