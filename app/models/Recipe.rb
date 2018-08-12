class Recipe
   @@all=[]
   attr_accessor :name
   attr_reader

   def initialize(name)
     @@all << self
     @name = name
   end

   def self.all
     @@all
   end

   def allergens
       ingredients.select do |ingredient|
          Allergen.ingredients.include?(ingredient)
        end
   end

   def ingredients
      rc=RecipeIngredient.all.select{ |recipeingredient|
      recipeingredient.recipe==self  }
      rc.map{ |rc|
      rc.ingredient  }
   end

   def add_ingredients(ingredients_array)
      ingredients_array.each {
        |ingredient|RecipeIngredient.new(self,ingredient)
      }
   end

   def self.most_popular
     counter={}
     max=0
     inst=nil
     RecipeCard.all.each do |recipecard|
       if counter[recipecard.recipe]==nil
         counter[recipecard.recipe]=1
       else
         counter[recipecard.recipe]+=1
       end

       if counter[recipecard.recipe]>max
           max=counter[recipecard.recipe]
           inst=recipecard.recipe
       end
     end
     inst
   end

   def users
     array = RecipeCard.all.select do |recipe_card|
       recipe_card.recipe == self
     end
     array.map do |recipe_card|
       recipe_card.user
     end
   end


end
