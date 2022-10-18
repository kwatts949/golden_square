{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries


2. Design the Class System


     ┌───────────────────────────────┐
     │ Diary                         │                 ┌─────────────────────────┐
     │ -----                         │                 │DiaryEntry               │
     │-add(entry)                    │                 │----------               │
     │-all                           │                 │-title                   │
     │-reading_chunk(wpm, mins)      ├────────────────►│-contents                │
     │                               │                 │                         │
     │                               │                 └─────────────────────────┘
     │                               │
     │                               │
     │                               │
     │                               │
     │                               │
     └───────────────────────────────┘◄────────────────┐
                   ▲                                   │
                   │                                   │
                   │                                   ├───────────────────────────────┐
                   │                                   │ Contacts                      │
                   │                                   │ --------                      │
                   │                                   │-all                           │
                   │                                   │                               │
     ┌─────────────┴──────────────────┐                │                               │
     │ToDoList                        │                └───────────────────────────────┘
     │--------                        │
     │-add(todo)                      │
     │                                │
     │                                │
     │                                │
     └──────────────▲─────────────────┘
                    │
     ┌──────────────┴─────────────────┐
     │ToDo                            │
     │----                            │
     │-title                          │
     │                                │
     └────────────────────────────────┘
class Diary
  def initialize
    # ...
  end

  def add(entry)
  # adds a diary entry
  end

  def all
  # returns a list of all entries
  end

  def reading_chunk(wpm, mins)
  # returns a suitable entry that is readable in the given time
  end
end

class DiaryEntry
  def initialize(title, contents)
  end

  def title
  # returns the title
  end

  def contents
  # returns the contents
  end
end

class Contacts
  def initialize
  end

  def all
  # returns a list of all phone numbers
  end
end

class ToDoList
  def initialize
  end

  def add(todo)
  # adds a task
  end
end

class ToDo
  def initialize
  end

  def title
  # returns the title of the task
  end
end

 
3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# EXAMPLE

# Returns a list of diary entries
diary = Diary.new
diary_1 = DiaryEntry.new("Monday", "Went to the shops")
diary_2 = DiaryEntry.new("Tuesday", "Went to the park")
diary.add(diary_1)
diary.add(diary_1)
diary.all # => [diary_1, diary_2]

4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE

# Adds a diary entry and returns its title
entry = DiaryEntry.new("Wednesday", "Went swimming")
entry.title # => "Wednesday"

# Adds a diary entry and returns its contents
entry = DiaryEntry.new("Wednesday", "Went swimming")
entry.title # => "Went swimming"


5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

