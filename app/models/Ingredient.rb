

class Ingredient

  attr_reader :name

  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end




  def self.all
      @@all
  end

  #get all allergen objs for this Ingredient
  def get_allergens
    Allergen.all.select do |allergen_obj|
      allergen_obj.ingredient == self
    end
  end

  #get the most common ingredient allergen
  def self.most_common_allergen
    user_count = { }

    #iterate over all ingredint objects
    self.all.each do |ingredient_obj|

    #populate hash table
    #count the occurences of the allergens for a given ingredient
      user_count[ingredient_obj] = ingredient_obj.get_allergens.size
    end

    #sort hash using max_by
    user_count.max_by {|ingredient, count| count}[0]

  end




end
