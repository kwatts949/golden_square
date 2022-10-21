require 'order'

RSpec.describe 'order' do
  it 'initially returns an empty list' do
    order = Order.new
    expect(order.selection).to eq []
  end

  it 'initially returns a price of £0' do
    order = Order.new
    expect(order.total).to eq "Your total order is £0."
  end
end