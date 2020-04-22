require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cookbook'

class CookBookTest < Minitest::Test

end
# pry(main)> cookbook = CookBook.new
# # => #<CookBook:0x00007faae6a42228 @recipes=[]>
#
# pry(main)> cookbook.add_recipe(recipe1)
#
# pry(main)> cookbook.add_recipe(recipe2)
#
# pry(main)> cookbook.recipes
# # => [#<Recipe:0x00007faae69c9698...>, #<Recipe:0x00007faae692a110...>]
# ```
