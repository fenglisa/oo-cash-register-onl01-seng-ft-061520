require "pry"

class CashRegister
  attr_accessor :total, :discount
  
  
  def initialize(discount = 20, total = 0)
    @total = total
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    self.total += quantity*price
  end
  
  def apply_discount
    self.total -= self.total*(self.discount.to_f/100.to_f)
    self.total.to_i
    puts "After the discount, the total comes to $#{self.total}."
  end
  
  
end
