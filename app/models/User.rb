class User
  attr_accessor :user_name
  @@all = []

  def initialize(user_name)
    @user_name = user_name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    list_of_my_recipe_cards = RecipeCard.all.select do |each_card|
      each_card.user == self
    end
    list_of_my_recipe_cards.map do |card|
      card.recipe
    end
  end

  def add_recipe_card(recipe_instance, date, rating)
    RecipeCard.new(recipe_instance,self,date,rating)
  end

  def declare_allergen(ingredient_instance)
    Allergen.new(ingredient_instance,self)
  end

  def allergens
    Allergen.all


######## this is where we left off. We need to return all of the
# ingredients that this user is allergic to. We'll need to use the select
# method















  end

  def top_three_recipes
  end

  def most_recent_recipe
  end



end
