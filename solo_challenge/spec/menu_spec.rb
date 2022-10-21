require 'menu'

RSpec.describe 'menu' do
  it 'returns a menu item' do
    item = Menu.new("my_item", 1)
    expect(item.item).to eq "my_item"
  end

  it 'returns a menu item price' do
    item = Menu.new("my_item", 1)
    expect(item.price).to eq 1
  end
end