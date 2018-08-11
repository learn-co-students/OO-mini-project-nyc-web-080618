
class User

  attr_reader :name

  @@all  = [ ]

  def self.all
    @@all
  end

  def initialize(name)
      @name = name
      @@all << self
  end

  def recipes
    recipe_obj_array = [ ]
    self.cards_for_user.each do |recipe_card|
      recipe_obj_array.push(recipe_card.recipe)
    end
    recipe_obj_array

  end

  def cards_for_user
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def add_recipe_card(recipe, date, rating)
    new_recipe = RecipeCard.new(recipe, self, date, rating)
    new_recipe
  end

  def declare_allergen(ingredient)
    new_allergen = Allergen.new(self, ingredient)
    new_allergen
  end

  def allergens
    Allergen.all.select do |allergen_object|
      allergen_object.user == self
    end
  end

  def top_three_recipes
    top_three = [ ]

    recipe_cards = self.cards_for_user
    recipe_cards = recipe_cards.sort{|x,y| y.rating <=> x.rating}
    top_three<< recipe_cards[0] << recipe_cards[1] << recipe_cards[2]
    top_three

  end

  def most_recent_recipe
    self.recipes.last


  end


end
