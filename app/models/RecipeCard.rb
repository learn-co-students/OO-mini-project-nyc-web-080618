require "pry"

class RecipeCard #join btwn user and recipe
attr_reader :date, :rating, :user, :recipe

@@all = []

def initialize(user, recipe, date, rating)
@user = user
@recipe = recipe
@date = date
@rating = rating
@@all << self
end

def self.all
  @@all
end

 def entry_date
   self.date
 end

def entry_rating
  self.rating
end

def entry_user
  self.user
end

def entry_recipe
  self.recipe
end
end
