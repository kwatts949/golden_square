class Todo
  def initialize
    @tasks = []
  end

  def add(task)
    @task = task
    @tasks << @task
  end
  
  def list
    return @tasks
  end

  def complete(task)
    fail "No such task." unless @tasks.include?(task)
      @tasks.delete(task)
  end
end