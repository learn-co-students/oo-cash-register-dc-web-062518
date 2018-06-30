require 'pry'

class CashRegister

attr_accessor :total, :items, :last_transaction
attr_reader :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @total += price * quantity
    @last_transaction = price * quantity
    quantity.times do
    @items << item
    end
  end

  def apply_discount
    @total -= (@total * @discount) / 100
    if @discount == 0
      return "There is no discount to apply."
    else
        return "After the discount, the total comes to $#{@total}."
      end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end



end

# transaction1 = CashRegister.new
# first = transaction1.add_item("raquet", 200)
#
#   # binding.pry
#   # puts "hi"
