class Customer
  attr_accessor :name, :age
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def meals
    meals.all.select { |meal| meal.customer == self}
  end 

  def new_meal(name, age, tip)
    Meal
  end
end
