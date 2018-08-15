require 'pry'
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

  def self.most_common_allergen
    ##The goal of this method is to sort by all of the allergen instances
    ## and return the instances with the highest number of users

    new_hash = {}
    Allergen.all.each do |allergen|
      if new_hash[allergen.user] == nil
        new_hash[allergen.user] = 1
      else
        new_hash[allergen.user] += 1
      end
    end
    new_hash.key(new_hash.values.max)
    #binding.pry

  end
end
