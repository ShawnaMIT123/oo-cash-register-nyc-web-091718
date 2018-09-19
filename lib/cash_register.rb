
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @price = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @items << Array.new(quantity,item)
    @price << price
  end

  def apply_discount
    @total = @total * ((100.0-@discount)* 0.01)
    if self.discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items.flatten
  end
  def void_last_transaction
    @total -= @price.last
  end

  end
