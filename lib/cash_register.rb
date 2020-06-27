require "pry"

class CashRegister
  attr_accessor :total, :discount, :haul, :last_transaction
 
  
  def initialize(discount = nil, total = 0)
    @total = total
    @discount = discount
    @haul = []
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times {@haul << title}
    self.last_transaction = quantity*price
    self.total += self.last_transaction
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
    self.haul
  end
  
  def void_last_transaction
    self.total -= self.last_transaction
  end
  
end
