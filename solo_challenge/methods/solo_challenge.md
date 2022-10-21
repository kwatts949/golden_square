{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

2. Design the Class System


                               ┌───────────────────┐
                               │ Interactive menu  │
                               │ ================  │
       ┌───────────┐           │                   │
       │ Menu      ◄───────────┤ - select dishes   │
       │ ====      │           │ - select quantity │
       │ - dishes  │           │ - get bill        │
       │ - prices  │           │ - exit            │
       │           │           └──────┬────────────┘
       └───────────┘                  │
                                      │
                                      │
                                      │
                                      │
       ┌───────────┐                  │
       │ Receipt   │                  │
       │ =======   ◄──────────────────┘
       │ - total   │
       │           │
       └───────────┘


Also design the interface of each class in more detail.

class InteractiveMenu
  def initialize
    # ...
  end
end

class Menu
  def initialize(dish, price) # dish and price are both strings
  end

  def dish
    # Returns a string of dish
  end

  def price
    # Returns the price of the dish
  end
end

class Receipt
  def add
    # checks if an item is selected and adds it to the bill
  end

  def total
    # returns a total price for the order
  end
end

3. Create Examples as Integration Tests

# EXAMPLE

# Gets all tracks
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]
4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE

# class Menu
# It returns a menu item
item  = Menu.new("my_item", "£0000")
expect(item.dish).to eq "my_item"

# It returns a menu item
item  = Menu.new("my_item", "£0000")
expect(item.price).to eq "£0000"

# class Receipt
# It adds a dish to the bill and totals the price
receipt = Receipt.new
receipt.add(Menu.new("my_item", "£0000"))
expect(receipt.total).to eq






5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.