require 'pry'
class CashRegister

  attr_accessor :total
  attr_reader :discount, :items



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @all = []
  end

  def add_item(title, price, quantity =1)
    @total = @total + price * quantity
    @last_transaction = price
    quantity.times {@all << title}
  end

  def apply_discount
    if @discount != 0
    @total = @total - @total * (@discount.to_f / 100)
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
    end
  end

  def items
    @all
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end
