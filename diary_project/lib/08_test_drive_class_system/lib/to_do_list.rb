class TodoList
  def initialize
    @tasks = []
    @completed =[]
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @tasks << todo
  end

  def incomplete
    @tasks.reject do |task|
      task.done? == true
    end
  end

  def complete
    # Returns all complete todos 
    fail "No tasks in list" if @tasks.empty?
    @tasks.select do |task|
      task.done? == true
    end
  end

  def give_up!
    @tasks.each do |task|
      if task.done? == true
        task
      else
        task.mark_done!
      end
    end
  end
end