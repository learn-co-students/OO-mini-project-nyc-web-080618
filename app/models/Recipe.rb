class Recipe
   @@all=[]
   attr_accessor :name, :ingredients
   attr_reader

   def initialize(name)
     @@all << self
     @name = name
     @ingredients = []
   end

   def self.all
     @@all
   end

   def allergens
       @ingredients.select do |ingredient|
          Allergen.ingredients.include?(ingredient)
        end
   end

   def add_ingredients(ingredients_array)
     @ingredients += ingredients_array
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
