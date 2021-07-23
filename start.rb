require_relative 'task_repository'
require_relative 'task_controller'
require_relative 'task_view'
require_relative 'router'

repository = TaskRepository.new
view = TaskView.new
controller = TaskController.new(view, repository)
router = Router.new(controller)
router.run

