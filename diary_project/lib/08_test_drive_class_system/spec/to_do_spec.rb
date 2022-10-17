require 'to_do'

RSpec.describe "to_do method" do
  it "returns a task as a string" do
    todo = Todo.new("wash the car")
    expect(todo.task).to eq "wash the car"
  end
  it 'marks the todo as done' do
    todo = Todo.new("wash the car")
    expect(todo.mark_done!).to eq "DONE - wash the car"
  end
  it 'returns true if the task is complete' do
    todo = Todo.new("wash the car")
    todo.mark_done!
    expect(todo.done?).to eq true
  end
  it 'returns false if the task is incomplete' do
    todo = Todo.new("wash the car")
    expect(todo.done?).to eq false
  end
end