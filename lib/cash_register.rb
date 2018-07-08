require 'pry'

class CashRegister

attr_accessor :total, :discount

  def initialize (discount =0)
    @total=0
    @discount = discount
    @sale=[]
  end



  def apply_discount
    @total= @total * (100 - @discount)/100
      if @discount == 0
        return "There is no discount to apply."
      else
        return "After the discount, the total comes to $#{@total}."
      end
    end

  def add_item(item, price, quantity=1)
    @sale << (item)
    @total = @total+(price*quantity)
  end

  def items
    return @sale

      binding.pry
  end

  def void_last_transaction
    @sale.pop
  end
end
