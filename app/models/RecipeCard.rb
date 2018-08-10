class RecipeCard
  @@all = []

  attr_accessor :recipe, :user, :date, :rating
  def initialize(recipe, user, date, rating)
    @@all << self
    @recipe = recipe
    @user = user
    @date = date
    @rating = rating
  end

  def self.all
    @@all
  end
end
