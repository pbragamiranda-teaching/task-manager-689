require_relative 'task'

class TaskController

  def initialize(view, repository)
    # an instance of the class TaskView
    @view = view
    # an instance of the class TaskRepository
    @repository = repository # TaskRepository.new
  end

  #create
  def create
    # 1. ask user for the task
    title = @view.ask_for_task
    # 2. create the task
    task = Task.new(title)
    # 3. add the task to the repo
    @repository.add(task)
  end

  #read

  def display_tasks
    # 1. ask repository for all tasks
    all_tasks = @repository.all
    # 2. ask the view to properly display the tasks
    @view.display_all_tasks(all_tasks)
  end

  def mark_as_done
    # 1. show the user all the tasks
    display_tasks
    # 2. ask the user which one to mark as done
    index = @view.ask_for_index
    # 3. ask repo for the right task
    task = @repository.find(index)
    # 4. uptade to completed
    task.mask_as_done!
  end


end
