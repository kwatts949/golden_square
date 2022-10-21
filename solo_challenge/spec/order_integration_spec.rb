require 'menu'
require 'order'

RSpec.describe 'integration tests' do
  context 'adding items to the order' do
    it 'initially returns an empty list' do
      order = Order.new
      choice = Menu.new(nil, nil)
      order.add_item(choice)
      expect(order.selection).to eq [choice]
    end

    it 'adds a single menu item and returns the list of ordered items' do
      order = Order.new
      choice = Menu.new("my_item", 1)
      order.add_item(choice)
      expect(order.selection).to eq [choice]
    end

    it 'adds 2 menu items and returns the list of ordered items' do
      order = Order.new
      choice = Menu.new("my_item", 1)
      choice_2 = Menu.new("my_item_2", 2)
      order.add_item(choice)
      order.add_item(choice_2)
      expect(order.selection).to eq [choice, choice_2]
    end
  end

  context 'totalling the bill' do
    it 'adds a single item to the selection and totals the price' do
      order = Order.new
      choice = Menu.new("my_item", 3)
      order.add_item(choice)
      order.bill
      expect(order.total).to eq "Your total order is £3."
    end

    it 'adds two items to the selection and totals the price' do
      order = Order.new
      choice = Menu.new("my_item", 3)
      choice_2 = Menu.new("my_item", 6)
      order.add_item(choice)
      order.add_item(choice_2)
      order.bill
      expect(order.total).to eq "Your total order is £9."
    end

     it 'adds four items to the selection and totals the price' do
      order = Order.new
      choice_1 = Menu.new("my_item", 3)
      choice_2 = Menu.new("my_item", 6)
      choice_3 = Menu.new("my_item", 20)
      choice_4 = Menu.new("my_item", 1)
      order.add_item(choice_1)
      order.add_item(choice_2)
      order.add_item(choice_3)
      order.add_item(choice_4)
      order.bill
      expect(order.total).to eq "Your total order is £30."
    end
  end
end