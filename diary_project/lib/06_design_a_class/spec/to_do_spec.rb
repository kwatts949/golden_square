require "to_do"

RSpec.describe "to_do method" do
  it "checks that the list is empty" do
    todo = Todo.new
    expect(todo.list).to eq []
  end
  it "adds a task to the list" do
    todo = Todo.new
    todo.add("clean house")
    expect(todo.list).to eq ["clean house"]
  end
  it "adds two tasks to the list" do
    todo = Todo.new
    todo.add("clean house")
    todo.add("feed pets")
    expect(todo.list).to eq ["clean house", "feed pets"]
  end
  it "adds four tasks to the list" do
    todo = Todo.new
    todo.add("clean house")
    todo.add("feed pets")
    todo.add("wash dog")
    todo.add("pay bills")
    expect(todo.list).to eq ["clean house", "feed pets", "wash dog", "pay bills"]
  end
   it "removes a task from the list" do
    todo = Todo.new
    todo.add("clean house")
    todo.add("feed pets")
    todo.complete("clean house")
    expect(todo.list).to eq ["feed pets"]
  end
    it "removes all tasks from the list" do
    todo = Todo.new
    todo.add("clean house")
    todo.add("feed pets")
    todo.complete("clean house")
    todo.complete("feed pets")
    expect(todo.list).to eq []
  end
    context "fails when no task is given" do
    it "fails" do
      todo = Todo.new
      todo.add("clean house")
      expect {todo.complete("clean mouse")}.to raise_error "No such task."
    end
  end
end