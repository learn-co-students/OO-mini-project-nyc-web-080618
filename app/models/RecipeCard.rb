class RecipeCard

  attr_accessor :user, :recipe

  @@all = []

  def initialize(user, recipe)
    @user = user
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

  def date(date)
    @date = date
  end

  def rating(rating)
    @rating = rating
  end

end #end of class
