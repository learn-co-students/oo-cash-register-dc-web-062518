require 'pry'
class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price, quantity = 1)
    @total += price*quantity
    @price = price
    @title = title
    quantity.times do
      @items << title
    end
  end

  def apply_discount
     # binding.pry
    if @discount != 0
       @total = @total - (@total * @discount.to_f/100)
       "After the discount, the total comes to $#{total.to_i}."
    else
     "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = @total - @price
  end

end
