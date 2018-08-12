class User
  attr_accessor :recipes,:name
  @@all=[]

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(date, rating, recipe)
    new = RecipeCard.new(date, rating, self, recipe)

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
    newarray = RecipeCard.all.sort_by {|recipecard|
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
