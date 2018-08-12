class Ingredient

attr_reader :name, :user

@@all = []

def initialize(name, user)
  @name = name
  @user = user
  @@all << self
end


# should return all of the ingredient instances
def self.all
  @@all
end # end of self.all Ingredient Class method


# should return the ingredient instance that the
# highest number of users are allergic to
def self.most_common_allergen
  Ingredient.all.sort_by do |ingredient_ob|
    #binding.pry
    ingredient_ob.common_allergy.length
  end.last
end # end of most_common_allergen Class Method

# Helper Method for self.most_common_allergen
def common_allergy
  Allergen.all.select do |allergen_ob|
    #binding.pry
    allergen_ob.ingredient == self
  end
end # end of popular_recipe_card Recipe instance method


end # End of Ingredients Class
