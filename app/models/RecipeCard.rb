class RecipeCard
    attr_accessor :date, :rating
    attr_reader :recipe, :user

    @@all = []

    def initialize(recipe, user, date, rating)
      @recipe = recipe
      @user = user
      @date = date
      @rating = rating
      @@all << self
    end


    def self.all
      @@all
    end

end
