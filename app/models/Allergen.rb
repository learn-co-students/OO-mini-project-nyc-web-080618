class Allergen

  attr_accessor :user,:ingredient

  @@all = []

  def initialize(ingredient,user)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end
end
