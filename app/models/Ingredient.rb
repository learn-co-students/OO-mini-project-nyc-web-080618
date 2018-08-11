class Ingredient
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def show_ingredient
    arr = Allergen.all.select{|allergen| allergen.ingredient == self}
    arr.map{|ingredient| ingredient.ingredient}.length
  end

  def self.most_common_allergen
    Allergen.all.sort_by{|allergen| allergen.ingredient.show_ingredient}.last.ingredient
  end


end
