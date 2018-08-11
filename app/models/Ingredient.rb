require "pry"
class Ingredient
attr_reader :name
 @@all = []
def initialize(name)
  @name = name
  @@all << name
end

def self.all
  @@all

end





def self.most_common_allergen
  array = []
   Allergen.all.each do |allergen|
     array << allergen.ingredient
  end
 array.max_by do |i|
   array.count(i) 
 end
end


end
