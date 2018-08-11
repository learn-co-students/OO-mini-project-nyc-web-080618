class Ingredient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_reci_ingred(name, recipe)
    new_ingredient = RecipeIngredient.new(name, recipe, self)
  end

  def new_allergen(name, user)
    Allergen.new(name, user, self)
  end

  def num_of_users
    allergen = Allergen.all.select do |allergen|
      allergen.ingredient == self
    end

    allergen.map do |allergen|
      allergen.user
    end.uniq.length
  end

  def self.most_common_allergen
    allergen = Allergen.all.sort_by do |allergen|
      allergen.ingredient.num_of_users
    end

    allergen.last.ingredient
  end

end #end of class
