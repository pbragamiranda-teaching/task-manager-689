class TaskRepository

  # STATE
  def initialize
    # array of instances of Task class
    @tasks = []
  end

  # add instances of Task class
  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

end

