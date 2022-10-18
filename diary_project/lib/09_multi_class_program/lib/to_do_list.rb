class ToDoList
  def initialize
    @tasks = []
  end

  def add(todo)
    @tasks << todo
  end

  def tasks
    return @tasks
  end
end