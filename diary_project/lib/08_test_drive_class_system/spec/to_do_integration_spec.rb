require 'to_do'
require 'to_do_list'

RSpec.describe "to do integration test" do
  context " adds to todo list"
    it "returns an empty list" do
      task = TodoList.new
      expect(task.incomplete).to eq []
  end
    it "returns a single incomplete todo" do
      task = TodoList.new
      task_1 = Todo.new("Wash car")
      task.add(task_1)
      expect(task.incomplete).to eq [task_1]
  end
   it "returns multiple incomplete todos in mixed list" do
      task = TodoList.new
      task_1 = Todo.new("Wash car")
      task_2 = Todo.new("DONE - Clean house")
      task_3 = Todo.new("Pay bills")
      task.add(task_1)
      task.add(task_2)
      task.add(task_3)
      expect(task.incomplete).to eq [task_1, task_3]
    end
    it "retruns multiple incomplete todos" do
      task = TodoList.new
      task_1 = Todo.new("Wash car")
      task_2 = Todo.new("Clean house")
      task_3 = Todo.new("Pay bills")
      task.add(task_1)
      task.add(task_2)
      task.add(task_3)
      expect(task.incomplete).to eq [task_1, task_2, task_3]
    end
    context "returns a list of completed tasks"
      it "returns an empty list when none are complete" do
      task = TodoList.new
      expect(task.complete).to eq []
    end 
      it "returns one item when one is complete" do
      task = TodoList.new
      task_1 = Todo.new("DONE - Wash car")
      task.add(task_1)
      expect(task.complete).to eq [task_1]
    end
    it "returns multiple completed items from mixed list" do
      task = TodoList.new
      task_1 = Todo.new("DONE - Wash car")
      task_2 = Todo.new("Pay bill")
      task_3 = Todo.new("DONE - Feed cat")
      task.add(task_1)
      task.add(task_2)
      task.add(task_3)
      expect(task.complete).to eq [task_1, task_3]
    end
    context "marks all as complete" do
      it "marks single instance as complete" do
        task = TodoList.new
        task_1 = Todo.new("Pay bill")
        task.add(task_1)
        expect(task.give_up!).to eq [task_1]
      end
      it "marks multiple instances as complete" do
        task = TodoList.new
        task_1 = Todo.new("Pay bill")
        task_2 = Todo.new("Clean house")
        task.add(task_1)
        task.add(task_2)
        expect(task.give_up!).to eq [task_1, task_2]
      end
        it "marks multiple mixed instances as complete" do
        task = TodoList.new
        task_1 = Todo.new("DONE - Pay bill")
        task_2 = Todo.new("Clean house")
        task_3 = Todo.new("Make dinner")
        task.add(task_1)
        task.add(task_2)
        task.add(task_3)
        expect(task.give_up!).to eq [task_1, task_2, task_3]
      end
    end
end