class Allergen
  @@all=[]
  @@ingredients=[]
  attr_accessor :ingredient,:user
  def initialize(ingredient,user)
    @ingredient=ingredient
    @@ingredients<<ingredient
    @user=user
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.ingredients
    @@ingredients
  end

end
