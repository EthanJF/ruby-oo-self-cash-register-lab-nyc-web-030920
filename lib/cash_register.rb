class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=nil)
    @total = 0
  end
  
  def add_item(title, price)
  end
end
