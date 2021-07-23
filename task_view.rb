class TaskView

  def ask_for_task
    puts "What task you want to add?"
    print ">"
    awnser = gets.chomp
    awnser
  end

  def display_all_tasks(tasks)
    # tasks? array of intances of the class Task
    tasks.each_with_index do |task, index|
      status = task.completed? ? "X" : " "
      puts "#{index + 1} - [#{status}] #{task.title}"
    end
  end

  def ask_for_index
    puts "Which one is completed? (give index)"
    print ">"
    return (gets.chomp.to_i - 1)
  end


end
