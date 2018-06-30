require 'pry'

class CashRegister

attr_accessor :total, :discount, :title, :price, :quantity, :add_item
attr_reader :all

@@all = []

  def initialize(discount = nil)
    @total = 0
    @discount = discount.to_f
    @price = price
    @title = title
    @all =[]
  end

  def add_item(title, price, quantity = 1)
      self.total = @total + quantity * price
      quantity.times do
        @all<< title
      end
  end

  def apply_discount
    if @discount == 0.0
      "There is no discount to apply."
    else
      self.total = self.total - @total*(@discount/100)
      "After the discount, the total comes to $#{self.total.round}."
    end

  end

def self.all
  @@all
end

def items
  @all
end

def void_last_transaction
       self.total -= self.total
end













end
