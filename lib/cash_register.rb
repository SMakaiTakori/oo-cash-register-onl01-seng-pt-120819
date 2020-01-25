class CashRegister
  attr_accessor :total, :discount, :price, :items, :last_transaction
  
  def initialize(discount = 0) 
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end   
  
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
   
    if quantity > 1 
       counter = 0 
      while counter < quantity 
       @items << item
       counter += 1
     end
   else
    @items << item
    end
    @last_transaction = @total
    @total
  end 
  
  def apply_discount
    if discount > 0 
      @discount = @discount/100.to_f
      @total = @total - (@total*@discount)
    @total -= new_price
    "After the discount, the total comes to $#{@total}."
    else 
    "There is no discount to apply."
    end 
  end
  
  def void_last_transaction
    @total -= @price
    # @total -= @last_transaction
    
  end
end 