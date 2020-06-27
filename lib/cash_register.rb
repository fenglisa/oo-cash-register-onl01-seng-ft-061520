require "pry"

class CashRegister
  attr_accessor :total, :discount
  
  
  def initialize(discount = nil, total = 0)
    @total = total
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
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
  
  
end
