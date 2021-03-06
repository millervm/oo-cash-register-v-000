class CashRegister

  attr_accessor :total, :discount, :items, :last_value

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @last_value = price * quantity
    @total += @last_value
    quantity.times {@items << title}
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= ((@discount.to_f/100) * @total).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @items.pop
    @total -= @last_value
  end

end
