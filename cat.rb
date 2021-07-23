class Cat

  attr_reader :color

  # OOP = STATE + BEHAVIOR
  def initialize(name, color)
    @name = name
    @color = color
  end

  def dye(new_color)
    @color = new_color
    p self
  end

  def self.kingdom
    "mammal"
  end


end


felix = Cat.new('felix', 'black')

garfield = Cat.new('garfield', 'orange')


# p garfiled
felix.dye('green')
# p garfiled
#
# puts Cat.kingdom
