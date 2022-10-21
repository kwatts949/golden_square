class Order
  def initialize
    @items = []
    @price = 0
  end

  def add_item(item)
    @items << item
  end

  def selection
    return @items
  end

  def bill
      @items.each do |item|
      #return "#{item.item} #{item.price}"
      @price += item.price 
    end
  end

  def total
    return "Your total order is £#{@price}."
  end
end
