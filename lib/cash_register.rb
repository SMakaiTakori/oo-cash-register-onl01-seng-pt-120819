class CashRegister
  attr_accessor :total, :discount, :price, :items, :last_transaction, :title
  
  def initialize(discount = 0) #optionally takes an employee discount on initialization
    @items = []
    @total = 0 #sets an instance variable @total on initialization to zero
    @discount = discount
  end
  
  def total
    @total
  end   
  
  def add_item(item, price, quantity = 1)
    @item = item
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
    new_price = (price*discount)/100
    @total -= new_price
    "After the discount, the total comes to $#{@total}."
    else 
    "There is no discount to apply."
    end 
  end
  
  def void_last_transaction
    @total -= @last_transaction
    
  end
end 