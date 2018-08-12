require "pry"

class Allergen

attr_reader :allergen, :ingredient, :user

@@all = []

def initialize(allergen, ingredient, user)
  @allergen = allergen
  @ingredient = ingredient
  @user = user
  @@all << self
end

def self.all
  @@all
end # End of self.all Allergen Class method





end # End of Allergen Class
