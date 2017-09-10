class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(employee_discount = 0)
    @total = 0
    @items = []
    @discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @items.push(title)
  end

  def apply_discount
    if @discount == 0
      puts "There is no discount to apply."
    else
      @total = @total*(1-@discount)
      puts "After the discount, the total comes to $#{@total}."
    end
  end

end
