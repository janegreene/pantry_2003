class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new {0}
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, amount)
    if @stock.key?(ingredient)
      @stock[ingredient] += amount
    else
      @stock[ingredient] = amount
    end
  end

end
