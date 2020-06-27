require "pry"

class CashRegister
  attr_accessor :total, :discount, :item
  @@items = []
  
  def initialize(discount = nil, total = 0)
    @total = total
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @item = item
    @@items << self.item
    self.total += quantity*price
  end
  
  def apply_discount
    if self.discount != nil
      self.total -= self.total*(self.discount.to_f/100.to_f)
      self.total = self.total.to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @@items
  end
  
end
