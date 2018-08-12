class Ingredient
  @@all=[]
  attr_accessor :name

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    counter = {}
    Allergen.all do |allergenobj|
      if counter[allergenobj.ingredient] == nil
        counter[allergenobj.ingredient] = 1
      else
      counter[allergenobj.ingredient] += 1
      end
    end
    counter.key(counter.values.max)
  end


end
