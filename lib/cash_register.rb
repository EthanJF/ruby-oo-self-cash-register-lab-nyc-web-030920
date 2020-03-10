class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @cart = []
  end
  
  def add_item(title, price, quantity=1)
    @total += (price*quantity)
    quantity.times do 
      @cart << title
    end
    @last_transaction = price*quantity
  end
  
  def apply_discount
    @total -= @total*(@discount/100.to_f)
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total.to_i}."
  end
  
  def items
    @cart
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
  
end
