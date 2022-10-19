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
  end

  def add(entry)
  # adds a diary entry
  end

  def all
  # returns a list of all entries
  end

  def count_words
  # counts words in an entry
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

  def count_words
  # counts the words in entries
  end

  def reading_time(wpm)
  # returns an integer when given a wpm
  end
end

class Contacts
  def initialize
  end

  def get_numbers
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
  context 'diary and diary entry integration' do
    it 'returns a list of diary entries' do
      diary = Diary.new
      diary_1 = DiaryEntry.new("Monday", "Went to the shops")
      diary_2 = DiaryEntry.new("Tuesday", "Went to the park")
      diary.add(diary_1)
      diary.add(diary_2)
      expect(diary.all).to eq [diary_1, diary_2]
    end

# Counts the words in all diary entries
it "counts the number of words in all diary entries" do 
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("Monday", "Went to the dentist")
      diary_entry2 = DiaryEntry.new("Tuesday", "Went to the park")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.count_words).to eq 8
    end

# Returns a suitable entry for the reading time and speed
    it "returns a suitable entry for the rading time and speed" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("Monday", "Went to the dentist")
        diary.add(diary_entry1)
        result = diary.find_best_entry_for_reading_time(4 ,1)
        expect(result). to eq diary_entry1
      end

# Creates a list of tasks
context 'to do list and to do integration' do
    it 'creates a list of tasks' do
      task = ToDoList.new
      task_1 = ToDo.new("Clean house")
      task_2 = ToDo.new("Wash car")
      task.add(task_1)
      task.add(task_2)
      expect(task.tasks).to eq [task_1, task_2]
    end

# extracts a list of phone numbers
  diary = Diary.new
  phone_nums = Contacts.new(diary)
  diary.add(DiaryEntry.new("Monday", "Amy 07353933191))
  diary.add(DiaryEntry.new("Tuesday", "Visited gran))
  expect(phone_nums.get_numbers).to eq [07353933191]
  end
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

