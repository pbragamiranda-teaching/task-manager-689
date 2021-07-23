class Task

  attr_reader :title

  def initialize(title)
    @title = title
    @completed = false
  end

  #BEHAVIOR - mark as done
  def mask_as_done!
    @completed = true
  end

  def completed?
    @completed
  end
end
