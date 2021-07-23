require_relative 'task'
require_relative 'task_repository'
require_relative 'task_controller'
require_relative 'task_view'

repository = TaskRepository.new
view = TaskView.new

new_task = Task.new('do flashcards')
# new_task2 = Task.new('run 2k')

controller = TaskController.new(view, repository)

controller.create
controller.create

controller.creat

controller.mark_as_done

controller.display_tasks
