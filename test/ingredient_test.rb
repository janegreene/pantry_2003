require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class IngredientTest < Minitest::Test
  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
  end

  def test_it_exists
    assert_instance_of Ingredient, @ingredient1
  end

  def test_it_has_attributes
    assert_equal "Cheese", @ingredient1.name
    assert_equal "oz", @ingredient1.unit
    assert_equal 50, @ingredient1.calories
  end

end

#
# ## Iteration 1 - Ingredient and Pantry
#
# ```markdown
# There are **4** Possible Points in Iteration 1:
# 1. Ingredient Creation - including all attr_readers
# 2. Pantry Creation - including all attr_readers
# 3. Pantry #check_stock
# 4. Pantry #restock
# ```
#
# Use TDD to build an `Ingredient` and a `Pantry` class that respond to the interaction pattern below:
#
#   ```ruby
#   pry(main)> require './lib/ingredient'
#   # => true
#
# pry(main)> require './lib/pantry'
# # => true
#
# pry(main)> ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
# # => #<Ingredient:0x007fe6041273d8...>
#
# pry(main)> ingredient1.name
# # => "Cheese"
#
# pry(main)> ingredient1.unit
# # => "oz"
#
# pry(main)> ingredient1.calories
# # => 50
#
# pry(main)> ingredient2 = Ingredient.new("Macaroni", "oz", 200)
# # => #<Ingredient:0x007fd88582ed98...>
#
# pry(main)> pantry = Pantry.new
# # => #<Pantry:0x007fd8858863b8...>
#
# pry(main)> pantry.stock
# # => {}
#
# pry(main)> pantry.stock_check(ingredient1)
# # => 0
#
# pry(main)> pantry.restock(ingredient1, 5)
#
# pry(main)> pantry.restock(ingredient1, 10)
#
# pry(main)> pantry.stock_check(ingredient1)
# # => 15
#
# pry(main)> pantry.restock(ingredient2, 7)
#
# pry(main)> pantry.stock_check(ingredient2)
# # => 7
# ```
