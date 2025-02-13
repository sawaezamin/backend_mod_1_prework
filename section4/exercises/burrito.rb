# Add the following methods to this burrito class and
# call the methods below the class:
# 1. add_topping
# 2. remove_topping
# 3. change_protein

class Burrito
  attr_reader :protein, :base, :toppings
  def initialize(protein, base, toppings)
    @protein  = protein
    @base     = base
    @toppings = toppings
  end

  def add_topping(topping)
    self.toppings.push(topping)
    puts "Here are your new toppings, #{toppings}."
  end

  def remove_topping(topping)
    self.toppings.delete(topping)
    puts "Here are your new toppings, #{toppings}."
  end

  def change_protein(new_protein)
    @protein = new_protein
    puts "We can change that out for something like #{protein}."
  end

end

dinner = Burrito.new("Beans", "Rice", ["cheese", "salsa", "guacamole"])
p dinner.protein
p dinner.base
p dinner.toppings

dinner.add_topping("Habanero Sauce")
p dinner.toppings

dinner.remove_topping("salsa")
p dinner.toppings

dinner.change_protein("Carne Asada")
p dinner.protein
