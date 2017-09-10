class CashRegister

  attr_accessor :total, :employee_discount, :items

  def initialize(employee_discount = 0)
    @total = 0
    @items = []
    @employee_discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @items.push(title)
  end

end
