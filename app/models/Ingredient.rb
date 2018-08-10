class Ingredient
  attr_reader :name, :user

  @@all = []

  def initialize(name, user)
    @name = name
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end # self.all

  def self.most_common_allergen
    allergen_hash = {}
    all_allergens = Ingredient.all.map do |ingredient|
      ingredient.user.allergens
    end.flatten

    all_allergens.each do |allergen|
      if !allergen_hash.has_key?(allergen.ingredient.name)
        allergen_hash[allergen.ingredient.name] = 1
      else
        allergen_hash[allergen.ingredient.name] += 1
      end
    end
    count_most_occurences(allergen_hash)
  end # self.most_common_allergen

  def self.count_most_occurences(allergen_hash)
    largest_count = 0
    most_common_ingredient_allergy = ""
    allergen_hash.each do |ingredient_name, count|
      if count > largest_count
        largest_count = count
        most_common_ingredient_allergy = ingredient_name
      end
    end
    most_common_ingredient_allergy
  end

end # Ingredient
