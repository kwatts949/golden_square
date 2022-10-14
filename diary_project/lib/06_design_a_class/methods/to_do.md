# ToDo Class Design Recipe

## 1. Describe the Problem
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class ToDo
  def initialize
  end

  def add(task) # task is a string
    # adds task to list
  end

  def list
  # returns a list of tasks as string
  # except completed ones
  end

  def complete(task)
   # marks task as complete
   # removes it from list
  end
end
```

## 3. Create Examples as Tests

```ruby
# EXAMPLE

# 1
todo = Todo.new 
todo.list => []

# 2
todo = Todo.new 
todo.add("clean house") => ["clean house"]
todo.list => ["clean house"]


# 3
todo = Todo.new 
todo.add("clean house") => ["clean house"]
todo.add("feed pets") => ["clean house", "feed pets"]
todo.list => ["clean house"]

# 4
todo = Todo.new 
todo.add("clean house") => ["clean house"]
todo.add("feed pets") => ["clean house", "feed pets"]
todo.complete("clean house")
todo.list => ["feed pets"]

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._