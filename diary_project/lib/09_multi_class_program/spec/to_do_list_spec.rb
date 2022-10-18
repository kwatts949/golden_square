require 'to_do_list'

RSpec.describe "to do list method" do
  it 'initially returns an empty list of tasks' do
    task = ToDoList.new
    expect(task.tasks).to eq []
  end
end